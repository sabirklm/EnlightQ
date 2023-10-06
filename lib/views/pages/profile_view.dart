import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enlight_q_app/controllers/auth_controller.dart';
import 'package:enlight_q_app/controllers/profile_controller.dart';
import 'package:enlight_q_app/views/pages/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  final bool isInitialFlow;
  const ProfileView({super.key,  this.isInitialFlow=false});

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
                    CircleAvatar(
                      radius: 64,
                      child: Text(
                        "S",
                        style: GoogleFonts.adamina(
                          fontSize: 64,
                          letterSpacing: 2.0,
                        ),
                      ),
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
                          hintText: "mondal.sabir.com97@gmail.com",
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
                          hintText: "+91 8617418378",
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
                          hintText: "B.E.",
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
                          hintText: "Jadavpur University",
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
                          hintText: "2023",
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
                            controller.signOut(context: context);
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
