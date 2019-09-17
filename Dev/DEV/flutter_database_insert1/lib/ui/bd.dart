import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class BD {
 // criaremos uma variável static, pois nunca irá mudar
 static final BD _instance = new BD.internal();

 // criaremos uma classe factory porque não será recriada sempre que chamarmos a classe BD (POO)
 factory BD() => _instance;

 // internal é um construtor então toda vez que precisamos é só instanciá-lo
 BD.internal();

 // criando o esqueleto da nossa tabela do banco de dados
 final String tabelaUsuario = "tabelaUsuario";
 final String colunaId = "id";
 final String colunaNome = "nome";
 final String colunaSenha = "senha";

 //Database é a classe do SQFlite que iremos usar, por isso iremos criá-la
 static Database _db;

   // sempre que formos acessar alguma coisa utilizar o future, pois ele é uma transação alheia
  Future<Database> get db async {
    // se o _db existe na memória
    if(_db != null){
      //caso exista, retorna este _bd existente
      return _db;
    }
    // chamamos agora o initBd que irá iniciar o nosso banco de dados
    _db = await initBd();
    return _db;
  }

  // iniciando nosso banco de dados em async pois ele é uma transição
  initBd() async {
    // Directory faz parte do plugin dart:io e o getApplicationDocumentsDirectory() faz parte do path_provider
    // aqui nós estamos acessando o diretório nativo do android
    Directory documentoDiretorio = await getApplicationDocumentsDirectory();

    // o join() junta duas coisas, no caso iremos juntar o diretorio juntamente com o nosso banco de dados
    String caminho = join(
      documentoDiretorio.path, "bd_principal.db"
    );

    // após ter acesso ao local do nosso BD, iremos abri-lo
    var nossoBD = await openDatabase(caminho, version: 1, onCreate: _onCreate);
    return nossoBD;
 
  }

  //criando o método _onCreate que irá criar o nosso BD
  void _onCreate(Database db, int version) async {
    // aqui iremos colocar o SQL que é outra linguagem, por isso, colocaremos
    // dentro de aspas, pois é string
    await db.execute("CREATE TABLE $tabelaUsuario($colunaId INTEGER PRIMARY KEY,"
      "$colunaNome TEXT,"
      "$colunaSenha TEXT)");
  }
  
 // criando o método de inserção de dados
 // Iremos colocar o objeto que acabamos de criar chamado Usuario
 // quando inserimos algo em nosso bd ele retorna um número que é o index
 // por isso que o future retorna um inteiro
 Future<int> inserirUsuario(Usuario usuario) async {
 // o db aqui é do get escrito lá no início
 // ao inserirmos um usuario, temos que criar um já esta instância de db
 // esse db irá retornar um database
 var bdCliente = await db;

 // para inserir temos que passar uma tabela e valores que pode ser um mapa
 // ese mapa é aquele que criamos em usuarios.dart
 int res = await bdCliente.insert("$tabelaUsuario", usuario.toMap());
 
 // aqui irá retornar um número
 return res;
 }

  // para podermos pegar os usuarios criados
  Future<List> pegarUsuarios() async {
    // praticamente iremos fazer a mesma coisa da função de inserir
    var bdCliente = await db;

    // rawQuery é como se fosse um pedido, então iremos solicitar todos os dados
    var res = await bdCliente.rawQuery("SELECT * FROM $tabelaUsuario");
    // agora iremos retornar uma list
    return res.toList();
 }
 
   Future<int> pegarContagem() async {
    var bdCliente = await db;
    // para pegarmos a contagem temos que ir na SQFlite e utilizar o firstIntValue
    return Sqflite.firstIntValue(await bdCliente.rawQuery("SELECT COUNT(*) FROM $tabelaUsuario"));
  }

  // iremos mostrar somente um usuário
  Future<Usuario> pegarUsuario(int id) async {
    var bdCliente = await db;
    var res = await bdCliente.rawQuery("SELECT * FROM $tabelaUsuario"
              " WHERE $colunaId = $id"); 

    // verificando se a lista retorna nada
    if (res.length == 0) return null;

    // iremos retornar um mapa dos dados, pega só o primeiro 
    return new Usuario.fromMap(res.first);
 }

   Future<int> apagarUsuario(int id) async {
    var bdCliente = await db;

    // where é o local de onde iremos deletar os dados
    return await bdCliente.delete(tabelaUsuario,
      where: "$colunaId = ?", whereArgs: [id]);
  } 

   Future<int> editarUsuario(Usuario usuario) async {
    var bdCliente = await db;

    // usaremos o toMap
    return await bdCliente.update(tabelaUsuario,
      usuario.toMap(), where: "$colunaId = ?", whereArgs: [usuario.id]
    );
  } 

    Future fechar() async {
    var bdCliente = await db;

    return bdCliente.close();
  } 
}