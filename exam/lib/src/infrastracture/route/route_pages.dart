
import 'package:exam/src/infrastracture/route/route_names.dart';
import 'package:exam/src/infrastracture/route/route_path.dart';
import 'package:exam/src/pages/Items/views/Items_list_page.dart';
import 'package:exam/src/pages/add_packs/commons/add_pack_bindings.dart';
import 'package:exam/src/pages/home/commons/home_bindings.dart';
import 'package:exam/src/pages/home/views/home_page.dart';
import 'package:exam/src/pages/items/commons/items_bindings.dart';
import 'package:exam/src/pages/login_page/commons/login_bindings.dart';
import 'package:exam/src/pages/login_page/views/login_page.dart';
import 'package:exam/src/pages/splash_screeen/commons/splash_bindings.dart';
import 'package:exam/src/pages/splash_screeen/views/splash_screen.dart';
import 'package:get/get.dart';

import '../../pages/add_packs/views/add_packs_page.dart';

class RoutePages {
  static List<GetPage> pages = [
  GetPage(name: RoutePath.splash,
   page: ()=> const SplashView(),
   binding: SplashBindings()),
   
   GetPage(name: RoutePath.login,
    page: () => const LoginPage(),
    binding: LoginBindings()),
   
    GetPage(name: RouteNames.home, 
    page: () => const HomePage(),
    binding: HomeBindings(),
    
    children: [
    
    GetPage(name: RoutePath.addPack,
     page: ()=>const AddItemPage(),
     binding: AddPackBindings()),
     
     GetPage(name: RoutePath.itemsList,
      page: () => const ItemsListPage(),
      binding: ItemsBindings() ),
    ])

  ];
}