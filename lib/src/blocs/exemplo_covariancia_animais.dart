abstract class Animal{
  //lista de amigos, _ para encapsular (tipo o private)
  final _amigos = [];
  //animais têm um nome
  final nome;
  
  //construtor que recebe nome e atribui à variável de instância
  Animal(this.nome);
  
  //método sem corpo é abstrato
  void fazerAmizade(Animal a);
  
  //para as subclasses chamarem
  void adicionar(Animal a){
    _amigos.add(a);
  }
  
  //representação textual
  String toString(){
    return nome;
  }
  
  //exibimos os amigos para testar
  void exibir (){
    //a exibição da lista causa a exibição de cada bicho, o que causa a execução
    //do método toString
    print(_amigos);
  }
}

class Cachorro extends Animal{
  Cachorro(super.nome);
  void fazerAmizade(Animal a){
    adicionar(a);
  }
}

class Papagaio extends Animal{
  Papagaio(super.nome);
  void fazerAmizade(Animal a){
    adicionar(a);
  }
}

void main(){
  var c1 = Cachorro('Thor');
  var c2 = Cachorro('Luna');
  var p1 = Papagaio('Zazu');
  var p2 = Papagaio('Lola');
  //c1 é amigo de c2, e p2;
  c1.fazerAmizade(c2);
  c1.fazerAmizade(p2);
  //p1 também é amigo de c2 e p2
  p1.fazerAmizade(c2);
  p1.fazerAmizade(p2);
  
  //amizades duradouras
  c1.exibir();
  p1.exibir();

  //Garfield não pode mais ser amigo do Odie
  var g1 = Gato('Garfield');
  //g1.fazerAmizade(c1);
  g1.exibir();
}

class Gato extends Animal{
  Gato(super.nome);
  //agora funciona, por causa do covariant
  void fazerAmizade(covariant Animal a){
    adicionar(a);
  }  
}



