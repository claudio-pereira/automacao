import 'package:flutter/material.dart';
import 'package:flutter_database1/database_helper.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQFlite Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  // referencia nossa classe single para gerenciar o banco de dados
  final dbHelper = DatabaseHelper.instance;
  // layout da homepage
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de CRUD básico'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Inserir dados', style: TextStyle(fontSize: 20),),
              onPressed: () {_inserir();},
            ),
            RaisedButton(
              child: Text('Consultar dados', style: TextStyle(fontSize: 20),),
              onPressed: () {_consultar();},
            ),
            RaisedButton(
              child: Text('Atualizar dados', style: TextStyle(fontSize: 20),),
              onPressed: () {_atualizar();},
            ),
            RaisedButton(
              child: Text('Deletar dados', style: TextStyle(fontSize: 20),),
              onPressed: () {_deletar();},
            ),
          ],
        ),
      ),
    );
  }
   // métodos dos Buttons 
  void _inserir() async {
    // linha para incluir
    Map<String, dynamic> row = {
      DatabaseHelper.columnNome : 'Macoratti',
      DatabaseHelper.columnIdade  : 53
    };
    final id = await dbHelper.insert(row);
    print('linha inserida id: $id');
  }
  void _consultar() async {
    final todasLinhas = await dbHelper.queryAllRows();
    print('Consulta todas as linhas:');
    todasLinhas.forEach((row) => print(row));
  }
  void _atualizar() async {
    // linha para atualizar
    Map<String, dynamic> row = {
      DatabaseHelper.columnId   : 1,
      DatabaseHelper.columnNome : 'Maria',
      DatabaseHelper.columnIdade  : 32
    };
    final linhasAfetadas = await dbHelper.update(row);
    print('atualizadas $linhasAfetadas linha(s)');
  }
  void _deletar() async {
    // Assumindo que o numero de linhas é o id para a última linha
    final id = await dbHelper.queryRowCount();
    final linhaDeletada = await dbHelper.delete(id);
    print('Deletada(s) $linhaDeletada linha(s): linha $id');
  }
}