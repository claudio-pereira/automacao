import 'dart:io';
import 'package:lista_de_contatos/model/pessoa.dart' show Fornecedor;
import 'package:sqflite/sqflite.dart';
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
String colcoditementrada = 'coditementrada';
String colProduto_codproduto = 'Produto_codproduto';
String colqtd = 'qtd';




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
}