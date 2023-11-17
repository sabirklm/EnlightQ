import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enlight_q_app/controllers/auth_controller.dart';
import 'package:enlight_q_app/controllers/profile_controller.dart';
import 'package:enlight_q_app/views/pages/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  final bool isInitialFlow;
  const ProfileView({super.key, this.isInitialFlow = false});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find();
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Obx(() {
            return Row(
              children: [
                if (!controller.isEditable && !isInitialFlow)
                  InkWell(
                    onTap: () {
                      controller.editProfile(true);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Edit",
                        style: GoogleFonts.adamina(
                          fontSize: 16,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                if (controller.isEditable && !isInitialFlow)
                  InkWell(
                    onTap: () {
                      controller.saveUser();
                      controller.editProfile(false);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Save",
                        style: GoogleFonts.adamina(
                          fontSize: 16,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
              ],
            );
          })
        ],
      ),
      body: SafeArea(
        child: Obx(() {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    if (!isInitialFlow)
                      CircleAvatar(
                        radius: 64,
                        child: Text(
                          controller.nameController.text.isEmpty
                              ? "The\nDreamer"
                              : controller.nameController.text[0],
                          style: GoogleFonts.adamina(
                            fontSize: controller.nameController.text.isEmpty
                                ? 18
                                : 64,
                            letterSpacing: 2.0,
                          ),
                          textAlign: TextAlign.center,
                        )
                            .animate()
                            .fadeIn(duration: const Duration(seconds: 3)),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: controller.nameController,
                        readOnly: !controller.isEditable,
                        style: GoogleFonts.adamina(
                          fontSize: 14,
                          letterSpacing: 2.0,
                        ),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: "Full Name",
                          labelStyle: GoogleFonts.adamina(
                            fontSize: 14,
                            letterSpacing: 2.0,
                          ),
                          hintStyle: GoogleFonts.adamina(
                            fontSize: 14,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: controller.emailController,
                        readOnly: !controller.isEditable,
                        style: GoogleFonts.adamina(
                          fontSize: 14,
                          letterSpacing: 2.0,
                        ),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: "xyz.example@abc.com",
                          hintStyle: GoogleFonts.adamina(
                            fontSize: 14,
                            letterSpacing: 2.0,
                          ),
                          suffixIcon: Icon(
                            Icons.verified,
                            color: Colors.green.shade500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: controller.phoneController,
                        readOnly: !controller.isEditable,
                        style: GoogleFonts.adamina(
                          fontSize: 14,
                          letterSpacing: 2.0,
                        ),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: "+91 XXXXXXXXXX",
                          hintStyle: GoogleFonts.adamina(
                            fontSize: 14,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: controller.degreeController,
                        readOnly: !controller.isEditable,
                        style: GoogleFonts.adamina(
                          fontSize: 14,
                          letterSpacing: 2.0,
                        ),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: "Degree",
                          hintStyle: GoogleFonts.adamina(
                            fontSize: 14,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: controller.collegeController,
                        readOnly: !controller.isEditable,
                        style: GoogleFonts.adamina(
                          fontSize: 14,
                          letterSpacing: 2.0,
                        ),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: "College Name",
                          hintStyle: GoogleFonts.adamina(
                            fontSize: 14,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: controller.yOPController,
                        readOnly: !controller.isEditable,
                        style: GoogleFonts.adamina(
                          fontSize: 14,
                          letterSpacing: 2.0,
                        ),
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: "Year of passout",
                          hintStyle: GoogleFonts.adamina(
                            fontSize: 14,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ),
                    if (isInitialFlow)
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 8),
                        decoration: const BoxDecoration(),
                        child: CupertinoButton(
                          color: Colors.blue,
                          child: Text(
                            "Continue",
                            style: GoogleFonts.adamina(
                              letterSpacing: 2.0,
                              fontSize: 14,
                            ),
                          ),
                          onPressed: () {
                            controller.saveUser();
                            Get.offAll(() => const HomeView());
                          },
                        ),
                      )
                    else
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 8),
                        decoration: const BoxDecoration(),
                        child: CupertinoButton(
                          child: Text(
                            "Sign Out",
                            style: GoogleFonts.adamina(
                              letterSpacing: 2.0,
                              fontSize: 14,
                            ),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaX: 2.0, sigmaY: 3.0),
                                  child: AlertDialog(
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Are you sure you want to log out? ",
                                          style: GoogleFonts.adamina(
                                            letterSpacing: 2.0,
                                            fontSize: 14,
                                          ),
                                        ).animate().fade()
                                      ],
                                    ),
                                    actions: [
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        elevation: 0.0,
                                        child: Text(
                                          "Cancel",
                                          style: GoogleFonts.adamina(
                                            letterSpacing: 2.0,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {
                                          controller.signOut(context: context);
                                        },
                                        color: Colors.black,
                                        elevation: 0.0,
                                        child: Text(
                                          "Logout",
                                          style: GoogleFonts.adamina(
                                            letterSpacing: 2.0,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
