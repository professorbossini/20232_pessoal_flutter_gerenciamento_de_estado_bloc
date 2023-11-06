
//Java
class Pessoa {
    //_ como prefixo significa private
    String _nome;
    int _idade;
    
    //Construtor
    Pessoa(this._nome, this._idade);

    //arrow function  
    String get nome => _nome;
  
    //arrow function
    set nome(String value) => _nome = value;
  
    //também pode com function "comum"
    //sem lista de parâmetros mesmo
    int get idade {return _idade;}
  
    //também daria para fazer "getIdade", mas ficaria estranho
    //já que o acesso é feito como se fosse uma propriedade
    //int get getIdade {return _idade;}
  
    //setter precisa de lista de parâmetros
    set idade(int value){_idade = value;}
  }
  
  void main() {
    var pessoa = Pessoa('Joao', 25);
    print(pessoa.nome);
    print(pessoa.idade);
    
    pessoa.nome = 'Maria';
    print(pessoa.nome);
  }
  