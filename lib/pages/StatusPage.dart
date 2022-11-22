import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(8), children: const [
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Color.fromRGBO(32, 44, 51, 1),
          child: Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          maxRadius: 20,
        ),
        title: Text('Fulano Favorito'),
        subtitle: Text('Assunto'),
        trailing: Text('19:43'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Color.fromRGBO(32, 44, 51, 1),
          child: Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          maxRadius: 20,
        ),
        title: Text('Fulano Favorito'),
        subtitle: Text('Assunto'),
        trailing: Text('19:43'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Color.fromRGBO(32, 44, 51, 1),
          child: Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          maxRadius: 20,
        ),
        title: Text('Fulano Favorito'),
        subtitle: Text('Assunto'),
        trailing: Text('19:43'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Color.fromRGBO(32, 44, 51, 1),
          child: Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
          maxRadius: 20,
        ),
        title: Text('Fulano Favorito'),
        subtitle: Text('Assunto'),
        trailing: Text('19:43'),
      ),
    ]);
  }
}
