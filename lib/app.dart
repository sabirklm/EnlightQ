import 'package:enlight_q_app/views/pages/auth_view.dart';
import 'package:flutter/material.dart';

import 'views/pages/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EnlightQ',
      theme: ThemeData.dark(),
      home: const LoginScreen(),
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
