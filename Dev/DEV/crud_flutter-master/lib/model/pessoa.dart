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
    this.numero = map['numero'];
    this.bairro = map['bairro'];
    this.cep = map['cep'];
    this.cidade = map['cidade'];
    this.uf = map['uf'];
}
}