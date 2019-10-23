class Usuario {
  String _nome;
  String _senha;
  int _id;

  // criando um construtor
  Usuario(this._nome, this._senha);

  //mapeando o usuario para podermos acessar os valores do usuário
  // utilizaremos dynamic, pois não sabemos o que é cada um
  // criaremos outro construtor
  Usuario.map(dynamic obj) {
    // quando passamos um nome ele já recebe como objeto
    this._nome = obj['nome'];
    this._senha = obj['senha'];
    this._id = obj['id'];
  } 


  String get nome => _nome;
  String get senha => _senha;
  int get id => _id;

  // o map irá acessar uma key, como string, e depois uma chave que eu deseje
  Map<String, dynamic> toMap() {
    //instanciando o mapa
    var mapa = new Map<String, dynamic>();
    // agora iremos fazer o inverso do anterio, iremos colocar o conteúdo 
    // dos atributos no mapa, ficará como se fosse um json
    mapa["nome"] = _nome;
    mapa["senha"] = _senha;

    // verificar se o id tem alguma coisa, para não adicionar nada em branco
    if (id != null){
      mapa["id"] = _id;
    }
    return mapa;
 }
 Usuario.fromMap(Map<String, dynamic> mapa) {
    // pegarei o mapa que estamos recebendo da funcao acima e colocando em _nome
    this._nome = mapa['nome'];
    this._id = mapa['id'];
    this._senha = mapa['senha'];
  }
}