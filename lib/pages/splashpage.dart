import 'package:brotherzap/main.dart';
import 'package:brotherzap/pages/login_cadastro/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ConversaPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      checkSingnedIn();
    });
  }

  checkSingnedIn() async {
    bool isLoggedIn = false;

    if (isLoggedIn) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: ((context) => const ConversaPage())));
      return;
    }
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff075E54),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Welcome to Whta's App",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Image.asset('logo.png', width: 200, height: 200),
              const SizedBox(height: 20),
              const Text(
                "Welcome to Whta's App",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: CircularProgressIndicator(color: Colors.greenAccent),
              ),
            ],
          ),
        ));
  }
}
