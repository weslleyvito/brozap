import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChamadasPage extends StatefulWidget {
  const ChamadasPage({Key? key}) : super(key: key);

  @override
  State<ChamadasPage> createState() => _ChamadasPageState();
}

class _ChamadasPageState extends State<ChamadasPage> {
  @override
  Widget build(BuildContext context) {
    return Text('Chamadas');
  }
}
