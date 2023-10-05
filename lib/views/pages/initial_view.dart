import 'package:enlight_q_app/controllers/auth_controller.dart';
import 'package:enlight_q_app/views/pages/auth_view.dart';
import 'package:enlight_q_app/views/pages/home_view.dart';
import 'package:enlight_q_app/views/pages/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return Obx(() {
      // if (controller.isLoading) {
      //   return Scaffold(
      //     body: Center(
      //       child: Text.rich(
      //         TextSpan(
      //           text: "Enlight",
      //           style: GoogleFonts.nunito(
      //             fontSize: 32,
      //           ),
      //           children: [
      //             TextSpan(
      //               text: "Q",
      //               style: GoogleFonts.nunito(
      //                 fontSize: 32,
      //                 color: Colors.green.shade500,
      //               ),
      //               children: [],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   );
      // }
      if (controller.isAuthenticated) {
        if (controller.isRegistered) {
          return const HomeView();
        } else {
          return const ProfileView();
        }
      }
      return const AuthView();
    });
  }
}
