import 'package:get/get.dart';

class UserController extends GetxController {
  var name = ''.obs;
  var email = ''.obs;
  var pass = ''.obs;

  changeNome(String new_name) {
    name.value = new_name;
  }

  changeEmail(String new_email) {
    email.value = new_email;
  }

  changePass(String new_pass) {
    pass.value = new_pass;
  }
}
