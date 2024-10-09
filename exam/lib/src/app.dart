import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'infrastracture/route/route_pages.dart';
import 'infrastracture/route/route_path.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Project Managment',
      initialRoute: RoutePath.splash,
      getPages: RoutePages.pages,
    );
  }
}