
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/pages/initial_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EnlightQ',
      theme: ThemeData.dark(),
      home: const InitialView(),
    );
  }
}

class EnlightRoute {
  static to({required BuildContext context, required Widget page}) {
    var route = MaterialPageRoute(
      builder: (context) => page,
    );
    Navigator.push(context, route);
  }

  static toOffAll({required BuildContext context, required Widget page}) {
    var route = MaterialPageRoute(
      builder: (context) => page,
    );
    Navigator.pop(context);
    Navigator.push(context, route);
  }
}
