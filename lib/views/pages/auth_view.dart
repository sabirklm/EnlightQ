import 'package:enlight_q_app/views/pages/home_view.dart';
import 'package:enlight_q_app/views/widgets/decorated_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              "https://www.dots-project.eu/wp-content/uploads/2020/02/shutterstock_157727576-1707x2048.jpg",
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black26,
                    Colors.black12,
                    Colors.black26,
                    Colors.black38,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Enlight",
                      style: GoogleFonts.nunito(
                        fontSize: 32,
                      ),
                      children: [
                        TextSpan(
                          text: "Q",
                          style: GoogleFonts.nunito(
                            fontSize: 32,
                            color: Colors.green.shade500,
                          ),
                          children: [],
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      EnlightRoute.to(context: context, page: const HomeView());
                    },
                    child: Container(
                      width: width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      margin: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white,
                        ),
                      ),
                      child: Text(
                        "Login",
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Colors.green.shade400,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      EnlightRoute.to(context: context, page: const HomeView());
                    },
                    child: Container(
                      width: width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      margin: const EdgeInsets.all(16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white,
                        ),
                      ),
                      child: Text(
                        "Register",
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Colors.green.shade500,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        width: 64,
                        height: 64,
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        child: Image.network(
                          "https://cdn2.iconfinder.com/data/icons/font-awesome/1792/phone-512.png",
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        width: 64,
                        height: 64,
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        child: Image.network(
                          "https://cdn2.iconfinder.com/data/icons/font-awesome/1792/phone-512.png",
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.all(16),
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        child: Image.network(
                          "https://cdn2.iconfinder.com/data/icons/font-awesome/1792/phone-512.png",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
