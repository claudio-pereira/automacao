import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'ui/bd.dart';
import 'models/usuario.dart';

List _todosUsuarios;

void main() async {
  // criando nossa classe BD
  var db = new BD();

    //add usuario que irá retornar um int
  int usuarioSalvo = await db.inserirUsuario(new Usuario("Pedro", "senha"));
    print("usuário inserido $usuarioSalvo");

  Usuario atualizarAna = Usuario.fromMap(
  {
    "nome" : "Ana Joada",
    "senha" : "MudeiSenha",
    "id" : 1
  }
);
int atualizado = await db.editarUsuario(atualizarAna);
debugPrint("Atualizado: $atualizado");

  runApp(
    new MeuApp()
  );
} 

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp( 
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu App"),
          backgroundColor: Colors.black38,
        ),
      // o "_" no itembuilder puxa o mesmo BuildContext context da árvore
      body: ListView.builder(
        itemCount: _todosUsuarios.length,
        itemBuilder: (_, int posicao){
          return Card(
            color: Colors.white,
            elevation: 2.0,
              child: ListTile(
                  leading: CircleAvatar(
                      child: Text("${Usuario.fromMap(_todosUsuarios[posicao]).nome.substring(0,1)}"),
                    ),
                  title: Text("Usuario: ${Usuario.fromMap(_todosUsuarios[posicao]).nome}"),
                ),
          );
        }
      ),  
    ),
  );
 }
}