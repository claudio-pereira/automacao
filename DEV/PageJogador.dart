import 'package:contole_futebol/src/data/DBHelper/repositories/RepositoryJogador.dart';
import 'package:contole_futebol/src/models/jogador.dart';
import 'package:flutter/material.dart';

class Jogadores extends StatefulWidget {
  @override
  _JogadoresState createState() => _JogadoresState();
}

class _JogadoresState extends State<Jogadores> {
  RepositoryJogador repository = RepositoryJogador();

  List<Jogador> jogadores = [];

  @override
  void initState() {    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _recuperarJogadores();
    return Scaffold(
      appBar: _appBar(),
      floatingActionButton: _floatingActionButton(),
      body: _body(),
    );
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton(

      child: Icon(Icons.person_add),
      onPressed: () {
        print("Adicionar novo jogador");
        _adicionarJogador();
      },
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("Jogadores"),
    );
  }

  _body() {
    return Container(
      child: ListView.builder(
        itemCount: jogadores.length,
        itemBuilder: (BuildContext context, int index) {
          Jogador _jogador = jogadores[index];
          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Colors.amber.withOpacity(0.6),
                ),
              ),
            ),
            child: ListTile(
              title: Text(_jogador.nome),
              subtitle: Text("Valor devido"),
              trailing: CircleAvatar(
                backgroundColor: _cor(_jogador.situacao),
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }

  Color _cor(Situacao situacao) {
    Color _cor;
    switch (situacao) {
      case Situacao.ok:
        _cor = Colors.greenAccent.withOpacity(0.5);
        break;
      case Situacao.comCredito:
        _cor = Colors.blueAccent.withOpacity(0.5);
        break;
      case Situacao.devedor:
        _cor = Colors.redAccent.withOpacity(0.5);
        break;
    }

    return _cor;
  }

  Future _adicionarJogador() async {
    setState(() {
      Jogador j = Jogador(
        id: 1,
        nome: "Leonardo Henrique Paim",
        situacao: Situacao.ok,
      );
      repository.insertJogador(j);
    });
  }

  _recuperarJogadores() async {
    var lista = await repository.selectJogador();
    setState(() {
      jogadores = lista;
    });
  }
}