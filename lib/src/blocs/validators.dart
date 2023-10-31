import 'dart:async';

import 'package:email_validator/email_validator.dart';
mixin Validators{
  //O primeiro String é o tipo do primeiro parâmetro do handleData
  //O segundo String é o tipo do valor manipulado pelo segundo parâmetro do handleData (o segundo parâmetro é um EventSink<String>)
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if (EmailValidator.validate(email)){
        //adicionamos ao sink, permitindo o "fluxo" do e-mail adiante
        sink.add(email);
      }
      else{
        //caso contrário, adicionamos um erro
        sink.addError("E-mail inválido");
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if (email.length > 3){
        sink.add(email);
      }
      else{
        sink.addError("Senha deve ter, pelo menos, 4 caracteres");
      }
    }
  );
}