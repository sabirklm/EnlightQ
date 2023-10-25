import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLearningView extends StatelessWidget {
  const MyLearningView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text(
          "Comming Soon",
          style: GoogleFonts.adamina(
            fontSize: 14,
            letterSpacing: 2.0,
          ),
        ),
      ),
    );
  }
}
