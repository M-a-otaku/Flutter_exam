import 'package:exam/src/pages/login_page/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() => Get.lazyPut(()=>LoginController());
  
}