import 'package:get/get.dart';

import '../../../infrastracture/route/route_path.dart';

class SplashController extends GetxController {
  void loading() async {
    await Future.delayed(const Duration(seconds: 4));
    await Get.offNamed(RoutePath.login);
  }
}