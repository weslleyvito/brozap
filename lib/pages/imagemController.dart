import 'package:get/get.dart';

class Controller extends GetxController {
  var pathFile = ''.obs;

  void foto(String novoPath) {
    pathFile.value = novoPath;
  }
}
