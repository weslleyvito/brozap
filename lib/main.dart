import 'package:brotherzap/pages/CameraPage.dart';
import 'package:brotherzap/pages/ChamdasPage.dart';
import 'package:brotherzap/pages/ConversaPage.dart';
import 'package:brotherzap/pages/StatusPage.dart';
import 'package:brotherzap/pages/login_cadastro/login.dart';
import 'package:brotherzap/pages/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashPage(),
      routes: {
        '/conversas': (context) => const ConversaPage(),
        '/status': (context) => const StatusPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LoginPage();
    // return DefaultTabController(
    //   length: 4,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       elevation: 0,
    //       actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
    //       title: const Text(
    //         'WhatsApp',
    //         style: TextStyle(color: Color.fromRGBO(233, 237, 239, 1)),
    //       ),
    //       bottom: const TabBar(tabs: [
    //         Tab(icon: Icon(Icons.camera_alt)),
    //         Tab(icon: Icon(Icons.message_outlined)),
    //         Tab(icon: Icon(Icons.star_border_purple500)),
    //         Tab(icon: Icon(Icons.phone))
    //       ]),
    //     ),
    //     body: const TabBarView(children: [
    //       CameraPage(),
    //       ConversaPage(),
    //       StatusPage(),
    //       ChamadasPage(),
    //     ]),
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: _incrementCounter,
    //       tooltip: 'Increment',
    //       child: const Icon(Icons.markunread_sharp),
    //     ), // This trailing comma makes auto-formatting nicer for build methods.
    //   ),
    // );
  }
}
