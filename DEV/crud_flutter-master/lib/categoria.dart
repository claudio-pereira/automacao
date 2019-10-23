import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'db/bancoHelper.dart' show DatabaseHelper;
import 'model/pessoa.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Lista de Categoria',
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
     primarySwatch: Colors.blue,
     ),
     home: ListaDeCategoria(titulo: 'Lista de Categoria'),
   );
 }
}
class ListaDeCategoria extends StatefulWidget {
ListaDeCategoria({Key key, this.titulo}) : super(key: key);
final String titulo;
  @override
  _ListaDeCategoriaState createState() => _ListaDeCategoriaState();
}
class _ListaDeCategoriaState extends State<ListaDeCategoria> {
//constantes para o formulário
final _categoria = TextEditingController();
final _tipo = TextEditingController();
final _tamanho = TextEditingController();
final _formKey = new GlobalKey<FormState>();
//variavel para o banco
static DatabaseHelper banco;
// variaveis para a lista de contatos
int tamanhoDaLista = 0;
List<Categoria> listaDeCategoria;
 @override
 void initState() {
  // instanciamos o banco;
  banco = new DatabaseHelper();
  // chamamos o método para inicializar
  banco.inicializaBanco();
  
  //chamamos o metodo para retornar a lista de contatos do banco
  Future<List<Categoria>> listaDeCategoria = banco.getListaDeCategoria();
  
  listaDeCategoria.then((novaListaDeCategoria) {
      //chamo o setState para alterar o estado
      //da lista com os novos valores
      setState(() {
        // pego os resultados do meu banco
        // atribuo a novaListaDeCategoria a minha variavel local
        // assim a inicializando
        this.listaDeCategoria = novaListaDeCategoria;
  
        // chamo a funcão length para retornar
        // o tamanho da minha lista
        // e atribuir o valor a minha variavel local
        this.tamanhoDaLista = novaListaDeCategoria.length;
      });
  });
}
// metodo para carregar a lista com novos dados
_carregarLista() {
//crio objeto do banco novamente
banco = new DatabaseHelper();
//inicializo o banco novamente
banco.inicializaBanco();
//pego os novos registros do banco caso haja
Future<List<Categoria>> noteListFuture = banco.getListaDeCategoria();
  noteListFuture.then((novaListaDeCategoria) {
      //altero o estado da minha lista
      //com os novos valores retornado do banco
      setState(() {
         //atribuo os novos valores a minha variavel local
         this.listaDeCategoria = novaListaDeCategoria;
   
         // atribuo o novo tamanho a minha variavel local
         this.tamanhoDaLista = novaListaDeCategoria.length; 
      });
  });
}
 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(widget.titulo),
      ),
      body: _listaDeCategoria(),
      floatingActionButton: FloatingActionButton(
           onPressed: () {
             _adicionarCategoria(); //chamo o AlertDialog
            },
      child: Icon(Icons.add),
      backgroundColor: Colors.blueAccent,
      ),
    );
}
void _removerItem(Categoria contato, int index) {
    // chamo novamente para atualizar a lista ao remover item
    setState(() {
    // minha lista de contatos atual,
    // recebe a nova lista,
    //menos o indice que eu estou passando
    listaDeCategoria = List.from(listaDeCategoria)..removeAt(index);
  
    // pego o id do contato para remove-lo
    banco.apagarCategoria(contato.codcategoria);
    //minha lista recebe ela mesma,
    // meno uma posicao que é o indice que eu removi;
    tamanhoDaLista = tamanhoDaLista - 1;
    
    });
}
void _adicionarCategoria() {
_categoria.text = '';
_tipo.text = '';
_tamanho.text = '';
showDialog(
   context: context,
   builder: (BuildContext context) {
      return AlertDialog(  
        title: new Text("Nova Categoria"),
        content: new Container(
          width: 230,
          constraints: BoxConstraints(minWidth: 230.0, minHeight: 25.0),
             child: new Form(
          key: _formKey,
          child: new Column(
             mainAxisSize: MainAxisSize.min,
             children: <Widget>[
                 Flexible(
                      child: ListView(
                        children: <Widget>[
               campoDeCategoria(),
               Divider(
                 color: Colors.transparent,
                 height: 20.0,
               ),
               campoDeTipo(),
               Divider(
                 color: Colors.transparent,
                 height: 20.0,
               ),
               campoDeTamanho(),
               Divider(
                 color: Colors.transparent,
                 height: 20.0,
               ),
              ],
                      ),
                      ),
                ]
            ),
          ),
        ),
       actions: <Widget>[
          new FlatButton(  
              child: new Text("Salvar"),
                 onPressed: () {
                   Categoria _contato;
                   if (_formKey.currentState.validate()) {
            
         //crio o objeto do meu contato, passando seus parametros
         _contato = new Categoria(_categoria.text, _tipo.text, _tamanho.text);
   
         // chamo o metodo para inserir  contato
         banco.inserirCategoria(_contato);
   
         // carrego a lista com o novo registro
         _carregarLista();
      
        // limpo os campos do formulario
        _formKey.currentState.reset();
 
        // remove o AlertDialog da tela;
        Navigator.of(context).pop();
       }
      },
     ),
    ],
   );
  },
 );
}
void _atualizarCategoria(Categoria contato) {
  _categoria.text = contato.categoria;
  _tipo.text = contato.tipo;
  _tamanho.text = contato.tamanho;
 

  showDialog(
   context: context,
   builder: (BuildContext context) {
      return AlertDialog(  
        title: new Text("Atualizando Categoria"),
        content: new Container(
          width: 230,
          constraints: BoxConstraints(minWidth: 230.0, minHeight: 25.0),
             child: new Form(
          key: _formKey,
          child: new Column(
             mainAxisSize: MainAxisSize.min,
             children: <Widget>[
                 Flexible(
                      child: ListView(
                        children: <Widget>[
               campoDeCategoria(),
               Divider(
                 color: Colors.transparent,
                 height: 20.0,
               ),
               campoDeTipo(),
               Divider(
                 color: Colors.transparent,
                 height: 20.0,
               ),
               campoDeTamanho(),
               Divider(
                 color: Colors.transparent,
                 height: 20.0,
               ),
               ],
                      ),
                      ),
                ]
            ),
          ),
        ),
     actions: <Widget>[
       new FlatButton(
          child: new Text("Atualizar"),
             onPressed: () {
                Categoria _contato;
             
             // faz a validacao do formulario
             if (_formKey.currentState.validate()) {
             // crio um novo objeto  passando seus atributos
             _contato = new Categoria(_categoria.text, _tipo.text, _tamanho.text);
 
             //chamo o metodo para atualizar com os novos valores
             banco.atualizarCategoria(_contato, contato.codcategoria);
    
             //carrego a lista com os novos valores
             _carregarLista();
   
            //reseto os campos do formulario
             _formKey.currentState.reset();
    
            // retiro o alerta da tela
            Navigator.of(context).pop();
            }
          },
        ),
       ],
     );
   },
 );
}

Widget campoDeCategoria() {
   return new TextFormField(
         controller: _categoria,
         keyboardType: TextInputType.text,
         validator: (valor) {
            if (valor.isEmpty && valor.length == 0) {
               return "Campo Obrigatório"; // retorna a mensagem
                //caso o campo esteja vazio
            }
         },
         decoration: new InputDecoration(
            hintText: 'Categoria do produto',
            labelText: 'Categoria',
            border: OutlineInputBorder(),
         ),
   );
}


Widget campoDeTipo() {
   return new TextFormField(
         controller: _tipo,
         keyboardType: TextInputType.text,
         validator: (valor) {
            if (valor.isEmpty && valor.length == 0) {
               return "Campo Obrigatório"; // retorna a mensagem
                //caso o campo esteja vazio
            }
         },
         decoration: new InputDecoration(
            hintText: 'Tipo do produto',
            labelText: 'Tipo do Produto',
            border: OutlineInputBorder(),
         ),
   );
}


Widget campoDeTamanho() {
   return new TextFormField(
         controller: _tamanho,
         keyboardType: TextInputType.text,
         validator: (valor) {
            if (valor.isEmpty && valor.length == 0) {
               return "Campo Obrigatório"; // retorna a mensagem
                //caso o campo esteja vazio
            }
         },
         decoration: new InputDecoration(
            hintText: 'Tamanho do Produto',
            labelText: 'Tamanho do Produto',
            border: OutlineInputBorder(),
         ),
   );
}

Widget _listaDeCategoria() {
   return ListView.builder(
     physics: const AlwaysScrollableScrollPhysics(),
     itemCount: tamanhoDaLista,
     itemBuilder: (context, index) {
        return GestureDetector(
           child: ListTile(
           //pego o nome do contato com base na posicao da lista
           title: Text(listaDeCategoria[index].categoria),
 
           //pego o email do contato com base na posicao da lista
           subtitle: Text(listaDeCategoria[index].tipo),
         
           leading: CircleAvatar(
            //pego o nome do contato com base no indice
            // da lista e pego a primeira letra do nome
            child: Text(listaDeCategoria[index].categoria[0]),
            ),
        ),
         //clique longo para atualizar
         onLongPress: () => _atualizarCategoria(listaDeCategoria[index]),


         //clique curto para remover
         onTap: () => _removerItem(listaDeCategoria[0], index),
         );
       },
     );
   }
}