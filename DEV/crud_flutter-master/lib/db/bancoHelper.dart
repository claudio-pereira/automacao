import 'dart:core' show Future, List, Map, String, dynamic, int;
import 'dart:io';
import 'package:lista_de_contatos/model/pessoa.dart';
import 'package:sqflite/sqflite.dart' show Database, openDatabase;
import 'dart:async';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
static DatabaseHelper _databaseHelper;
static Database _database;
String tabelaNome = 'tabela_fornecedor';
String colcodfornecedor = 'codfornecedor';
String colFornecedor = 'fornecedor';
String colNome = 'nome';
String colTel = 'tel';
String colEmail = 'email';
String colCnpj = 'cnpj';
String colInsc_estad = 'insc_estad';
String colEndereco = 'endereco';
String colNum = 'num';
String colBairro = 'bairro';
String colCep = 'cep';
String colCidade = 'cidade';
String colUf = 'uf';
String tabelaNome2 = 'tabela_categoria';
String colcodcategoria = 'codcategoria';
String colcategoria ='categoria' ;
String coltipo = 'tipo';
String coltamanho = 'tamanho';
String tabelaNome3 = 'tabela_produto';
String colcategoria_codcategoria = 'categoria_codcategoria';
String colcodproduto = 'codproduto';
String colfornecedor_codfornecedor = 'fornecedor_codfornecedor';
String coldescricao = 'descricao';
String colpeso = 'peso';
String colqtdmin = 'qtdmin';
String tabelaNome4 = 'tabela_item_entrada';	
String colcoditementrada = 'coditementrada';
String colproduto_codproduto = 'produto_codproduto';
String colqtd_ent = 'qtd';
String colvalor_ent = 'valor_ent';
String coldata_ent = 'data_ent';
String tabelaNome5 = 'tabela_item_saida';
String colcoditemsaida = 'coditemsaida';
String colqtde_saida = 'qtde_saida';
String colvalor_saida = 'valor_saida';
String coldata_saida = 'data_saida';
DatabaseHelper._createInstance();
factory DatabaseHelper() {
   if (_databaseHelper == null) {
       _databaseHelper = DatabaseHelper._createInstance();
   }
 
 return _databaseHelper;
}
Future<Database> get database async {
   if (_database == null) {
       _database = await inicializaBanco();
   }
 
 return _database;
}
Future<Database> inicializaBanco() async {
  Directory diretorio = await getApplicationDocumentsDirectory();
  String path = diretorio.path + 'fornecedor.db';
  
  var bandoDeContatos = await openDatabase
  (path, version: 1,  onCreate: _criaBanco);
 return bandoDeContatos;
}
void _criaBanco(Database db, int versao) async {
   await db.execute('CREATE TABLE $tabelaNome('
   '$colcodfornecedor INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,'
	 '$colFornecedor TEXT,'
   '$colNome TEXT,'
	 '$colTel TEXT,'
   '$colEmail TEXT,'
	 '$colCnpj TEXT,'
	 '$colInsc_estad TEXT,'
	 '$colEndereco TEXT,'
	 '$colNum TEXT,'
	 '$colBairro TEXT,'
	 '$colCep TEXT,'
	 '$colCidade TEXT,'
	 '$colUf TEXT);');

  await db.execute('CREATE TABLE $tabelaNome2('
	'$colcodcategoria	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,'
	'$colcategoria	TEXT,'
	'$coltipo	TEXT,'
	'$coltamanho	TEXT);'); 

  await db.execute("""CREATE TABLE $tabelaNome3(
	$colcategoria_codcategoria	INTEGER NOT NULL UNIQUE,
	$colcodproduto	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	$colfornecedor_codfornecedor	INTEGER NOT NULL UNIQUE,
	$coldescricao	TEXT,
	$colpeso	REAL,
	$colqtdmin	INTEGER,
	FOREIGN KEY ($colcategoria_codcategoria) REFERENCES $tabelaNome2($colcodcategoria),
	FOREIGN KEY ($colfornecedor_codfornecedor) REFERENCES $tabelaNome($colcodfornecedor)
);""");

  await db.execute("""CREATE TABLE IF NOT EXISTS $tabelaNome4(
	$colcoditementrada	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	$colproduto_codproduto	INTEGER,
	$colqtd_ent	INTEGER,
	$colvalor_ent	REAL,
	$coldata_ent	TEXT,
	FOREIGN KEY($colproduto_codproduto REFERENCES $tabelaNome3($colcodproduto),
);""");
await db.execute("""CREATE TABLE IF NOT EXISTS $tabelaNome5(
	$colcoditemsaida	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	$colproduto_codproduto	INTEGER,
	$colqtde_saida	INTEGER,
	$colvalor_saida	REAL,
	$coldata_saida	TEXT,
	FOREIGN KEY($colproduto_codproduto) REFERENCES $tabelaNome3($colcodproduto),
);""");
/*
De uma forma direta, esse seria o SQL
CREATE TABLE tabela_contato(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT,
email TEXT
);
*/
}
Future<List<Map<String, dynamic>>> getContatoMapList() async {
   Database db = await this.database;
   var result = await db.rawQuery("SELECT * FROM tabela_fornecedor");
 return result;
}
Future<int> inserirContato(Fornecedor contato) async {
   Database db = await this.database;
   var result = await db.insert(tabelaNome, contato.toMap());
 return result;
}
Future<int> atualizarContato(Fornecedor contato,int codfornecedor) async {
   var db = await this.database;
   var result = await db.rawUpdate("UPDATE $tabelaNome SET $colFornecedor = '${contato.fornecedor}', $colNome = '${contato.nome}', $colTel = '${contato.tel}',   $colEmail = '${contato.email}', $colCnpj = '${contato.cnpj}', $colInsc_estad = '${contato.insc_estad}', $colEndereco = '${contato.endereco}', $colNum = '${contato.numero}', $colBairro = '${contato.bairro}', $colCep = '${contato.cep}', $colCidade = '${contato.cidade}', $colUf = '${contato.uf}' WHERE $colcodfornecedor = '$codfornecedor'");
 return result;
}
Future<int> apagarContato(int codfornecedor) async {
   var db = await this.database;
   int result = await db.rawDelete('DELETE FROM $tabelaNome WHERE $colcodfornecedor = $codfornecedor');
return result;
}
Future<List<Fornecedor>> getListaDeContato() async {
   var contatoMapList = await getContatoMapList();
   int count = contatoMapList.length;
   List<Fornecedor> listaDeContatos = List<Fornecedor>();
   for (int i = 0; i < count; i++) {
      listaDeContatos.add(Fornecedor.fromMapObject(contatoMapList[i]));
   }
 return listaDeContatos;
}

Future<List<Map<String, dynamic>>> getCategoriaMapList() async {
   Database db = await this.database;
   var result = await db.rawQuery("SELECT * FROM tabela_categoria");
 return result;
}
Future<int> inserirCategoria(Categoria contato) async {
   Database db = await this.database;
   var result = await db.insert(tabelaNome, contato.toMap());
 return result;
}
Future<int> atualizarCategoria(Categoria contato,int codcategoria) async {
   var db = await this.database;
   var result = await db.rawUpdate("UPDATE $tabelaNome2 SET $colcategoria = '${contato.categoria}', $coltipo = '${contato.tipo}', $coltamanho = '${contato.tamanho}' WHERE $colcodcategoria = '${contato.codcategoria}'");
 return result;
}
Future<int> apagarCategoria(int codcategoria) async {
   var db = await this.database;
   int result = await db.rawDelete('DELETE FROM $tabelaNome2 WHERE $colcodcategoria = $codcategoria');
return result;
}
Future<List<Categoria>> getListaDeCategoria() async {
   var contatoMapList = await getContatoMapList();
   int count = contatoMapList.length;
   List<Categoria> listaDeCategoria = List<Categoria>();
   for (int i = 0; i < count; i++) {
      listaDeCategoria.add(Categoria.fromMapObject(contatoMapList[i]));
   }
 return listaDeCategoria;
}
}