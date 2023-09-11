import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Edit",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Save",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 64,
                    child: Text(
                      "S",
                      style: GoogleFonts.nunito(
                        fontSize: 64,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Sabir Mondal",
                        hintStyle: GoogleFonts.nunito(
                          fontSize: 16,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "mondal.sabir.com97@gmail.com",
                        hintStyle: GoogleFonts.nunito(
                          fontSize: 16,
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
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "+91 8617418378",
                        hintStyle: GoogleFonts.nunito(
                          fontSize: 16,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "B.E.",
                        hintStyle: GoogleFonts.nunito(
                          fontSize: 16,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Jadavpur University",
                        hintStyle: GoogleFonts.nunito(
                          fontSize: 16,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "2023",
                        hintStyle: GoogleFonts.nunito(
                          fontSize: 16,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
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
