import 'package:flutter/material.dart';
import '../src/telas/login_tela.dart';
//importamos o arquivo provider
import 'blocs/provider.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //empacotamos o MaterialApp com um Provider
    return Provider(
      child:MaterialApp(
      title: 'Login',
      home: Scaffold(
        body: LoginTela(),
      )
    )
  );
  }
}
