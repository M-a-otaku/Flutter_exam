import 'route_path.dart';

class RouteNames {
  static const String splash = RoutePath.splash;
  static const String login = RoutePath.login;
  static const String home = RoutePath.home;
  static const String addPack = "${RoutePath.home}${RoutePath.addPack}";
  static const String itemsList = "${RoutePath.home}${RoutePath.addPack}${RoutePath.itemsList}";
  static const String edititemsList = "${RoutePath.home}${RoutePath.addPack}${RoutePath.itemsList}${RoutePath.editList}";

  
}