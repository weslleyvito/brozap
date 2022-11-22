import 'dart:html';

import 'package:brotherzap/pages/login_cadastro/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../controllers/userController.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController controllerEmail = TextEditingController();
TextEditingController controllerSenha = TextEditingController();
var userContrl = Get.find<UserController>();
String _mensagemErro = '';

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(color: Color(0xff075E54)),
            padding: const EdgeInsets.all(16),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: Image.asset(
                        'logo.png',
                        width: 200,
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextField(
                        controller: controllerEmail,
                        onChanged: (value) {
                          userContrl.changeEmail(value);
                        },
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                          hintText: 'E-Mail',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        userContrl.changePass(value);
                      },
                      controller: controllerSenha,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: 'Senha',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16, bottom: 10),
                      child: OutlinedButton(
                        onPressed: () {
                          var a = validateFields();
                          if (a != '') {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(a.toString())));
                          } else {
                            _logarUsuario(
                                userContrl.email.value, userContrl.pass.value);
                            // _deslogarUsuario()
                          }
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            )),
                        child: Text(
                          'Entrar',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        child: const Text(
                          'Não tem conta? Cadastra-se',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CadastroPage()));
                        },
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}

validateFields() {
  if (controllerEmail.text.isEmpty) {
    userContrl.changeEmail('email vazio');
    return "Preencha o campo enail...";
  } else {
    if (controllerSenha.text.isEmpty) {
      userContrl.changeEmail('senha vazia');
      return "Preencha o campo senha ...";
    } else {
      return "";
    }
  }
}

void _logarUsuario(String email, String pass) {}

void _deslogarUsuario() {
  // var firebaseAuth = FireBaseAuth.instance;
  // User? user = firebaseAuth.currentUser;
  // if(user != null){
  //   firebaseAuth.singOut();

  // }else{
  //   Navigator.pushAndRemoveUntil(context, '/login', ModalRoute.withName('/'));
  // }
}
