import 'package:brotherzap/pages/imagemController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  var a = Get.put(Controller());
  late XFile? _image;
  final Controller c = Get.find<Controller>();

  Future getImage(String tipo) async {
    var pickedFile;
    var imagemBackround;

    final ImagePicker _picker = ImagePicker();

    if (tipo == 'camera') {
      pickedFile = await _picker.pickImage(source: ImageSource.camera);
    } else if (tipo == 'video') {
      pickedFile = await _picker.pickVideo(source: ImageSource.camera);
    } else {
      pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    }

    setState(() {
      if (pickedFile != null) {
        _image = pickedFile;
        imagemBackround = _image!.path;
      } else {
        _image = null;
      }

      c.foto(imagemBackround);
    });
  }

  @override
  void initState() {
    super.initState();
    getImage('camera');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: TextButton(
              onPressed: () {
                getImage('galeria');
              },
              child: const Text('Escolher da galeria')),
        ),
        Container(
          child: TextButton(
              onPressed: () {
                getImage('camera');
              },
              child: const Text('Tirar uma foto')),
        ),
        Container(
          child: TextButton(
              onPressed: () {
                getImage('video');
              },
              child: const Text('Gravar um video')),
        ),
        Container(
          child: TextButton(
              onPressed: () {
                Get.snackbar('Aula', 'PDM',
                    isDismissible: false,
                    colorText: Colors.deepPurple,
                    backgroundColor: Colors.white,
                    dismissDirection: DismissDirection.startToEnd,
                    icon: Icon(Icons.smart_display));
              },
              child: const Text('Multiplas Opções')),
        ),
      ],
    );
  }
}
