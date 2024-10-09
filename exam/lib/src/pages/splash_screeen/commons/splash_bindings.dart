import 'package:exam/src/pages/splash_screeen/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() => Get.lazyPut(()=>SplashController());
  
}