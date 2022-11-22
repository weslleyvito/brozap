import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConversaPage extends StatefulWidget {
  const ConversaPage({Key? key}) : super(key: key);

  @override
  State<ConversaPage> createState() => _ConversaPageState();
}

class _ConversaPageState extends State<ConversaPage> {
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
        title: Text('Fulano'),
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
        title: Text('Fulano'),
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
        title: Text('Fulano'),
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
        title: Text('Fulano'),
        subtitle: Text('Assunto'),
        trailing: Text('19:43'),
      ),
    ]);
  }
}
