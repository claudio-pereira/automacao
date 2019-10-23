import 'dart:ffi';

class Fornecedor {
int codfornecedor;
String fornecedor;
String nome;
String tel;
String email;
String cnpj;
String insc_estad;
String endereco;
String numero;
String bairro;
String cep;
String cidade;
String uf;

Fornecedor(this.fornecedor, this.nome, this.tel, this.email, this.cnpj, this.insc_estad, this.endereco, this.numero, this.bairro, this.cep, this.cidade, this.uf, [String text]);
Map<String, dynamic> toMap() {
  var map = Map<String, dynamic>();
      if (codfornecedor != null) {
          map['codfornecedor'] = codfornecedor;
      }
  map['fornecedor'] = fornecedor;
  map['nome'] = nome;
  map['tel'] = tel;
  map['email'] = email;
  map['cnpj'] = cnpj;
  map['insc_estad'] = insc_estad;
  map['endereco'] = endereco;
  map['num'] = numero;
  map['bairro'] = bairro;
  map['cep'] = cep;
  map['cidade'] = cidade;
  map['uf'] = uf;
  return map;
}


Fornecedor.fromMapObject(Map<String, dynamic> map) {
    this.codfornecedor = map['codfornecedor'];
    this.fornecedor = map['fornecedor'];
    this.nome = map['nome'];
    this.tel = map['tel'];
    this.email = map['email'];
    this.cnpj = map['cnpj'];
    this.insc_estad = map['insc_estad'];
    this.endereco = map['endereco'];
    this.numero = map['num'];
    this.bairro = map['bairro'];
    this.cep = map['cep'];
    this.cidade = map['cidade'];
    this.uf = map['uf'];
}
}

class Categoria {
int codcategoria;
String categoria;
String tipo;
String tamanho;  

Categoria(this.categoria, this.tipo, this.tamanho, [String text]);
Map<String, dynamic> toMap() {
  var map = Map<String, dynamic>();
      if (codcategoria != null) {
          map['codcategoria'] = codcategoria;
      }
  map['categoria'] = categoria;
  map['tipo'] = tipo;
  map['tamanho'] = tamanho;
  return map;
}


Categoria.fromMapObject(Map<String, dynamic> map) {
    this.codcategoria = map['codcategoria'];
    this.categoria = map['categoria'];
    this.tipo = map['tipo'];
    this.tamanho = map['tamanho'];
}
}

class Produto {
int codproduto;
int categoria_codcategoria;
int fornecedor_codfornecedor;
String descricao;
String peso;
int qtdmin;


Produto(this.descricao, this.peso, [String text]);
Map<String, dynamic> toMap() {
  var map = Map<String, dynamic>();
      if (codproduto != null) {
          map['codproduto'] = codproduto;
      }
  map['categoria_codcategoria'] = categoria_codcategoria;
  map['fornecedor_codfornecedor'] = fornecedor_codfornecedor;
  map['descricao'] = descricao;
  map['peso'] = peso;
  map['qtdmin'] = qtdmin;
  return map;
}


Produto.fromMapObject(Map<String, dynamic> map) {
    this.codproduto = map['codproduto'];
    this.categoria_codcategoria = map['categoria_codcategoria'];
    this.fornecedor_codfornecedor = map['fornecedor_codfornecedor'];
    this.descricao = map['descricao'];
    this.peso = map['peso'];
    this.qtdmin = map['qtdmin'];
}
}

class Item_entrada {
int coditementrada;
int produto_codproduto;
int qtd_ent;
Float valor_ent;
String data_ent;

Item_entrada(this.data_ent, [String text]);
Map<String, dynamic> toMap() {
  var map = Map<String, dynamic>();
      if (coditementrada != null) {
          map['coditementrada'] = coditementrada;
      }
  map['produto_codproduto'] = produto_codproduto;
  map['qtd_ent'] = qtd_ent;
  map['valor_ent'] = valor_ent;
  map['data_ent'] = data_ent;
  return map;
}


Item_entrada.fromMapObject(Map<String, dynamic> map) {
    this.coditementrada = map['coditementrada'];
    this.produto_codproduto = map['produto_codproduto'];
    this.qtd_ent = map['qtd_ent'];
    this.valor_ent = map['valor_ent'];
    this.data_ent = map['data_ent'];
}
}

class Item_saida {
int coditemsaida;
int produto_codproduto;
int qtd_saida;
Float valor_saida;
String data_saida;

Item_saida(this.data_saida, [String text]);
Map<String, dynamic> toMap() {
  var map = Map<String, dynamic>();
      if (coditemsaida != null) {
          map['coditemsaida'] = coditemsaida;
      }
  map['produto_codproduto'] = produto_codproduto;
  map['qtd_ent'] = qtd_saida;
  map['valor_ent'] = valor_saida;
  map['data_ent'] = data_saida;
  return map;
}


Item_saida.fromMapObject(Map<String, dynamic> map) {
    this.coditemsaida = map['coditemsaida'];
    this.produto_codproduto = map['produto_codproduto'];
    this.qtd_saida = map['qtd_saida'];
    this.valor_saida = map['valor_saida'];
    this.data_saida = map['data_saida'];
}
}