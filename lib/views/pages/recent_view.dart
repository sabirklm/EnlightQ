import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/home_controller.dart';

class RecentView extends StatelessWidget {
  const RecentView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Scaffold(
      body: ListView(
        children: [
          ...List.generate(
              controller.recents.length,
              (index) => Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black12,
                      border: Border.all(
                        width: 2.0,
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.recents[index].title ?? "",
                          style: GoogleFonts.nunito(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          controller.recents[index].desc ?? "",
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            letterSpacing: .620,
                            wordSpacing: 2.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            FlutterWebBrowser.openWebPage(
                              url: "https://flutter.io/",
                              customTabsOptions: const CustomTabsOptions(
                                colorScheme: CustomTabsColorScheme.dark,
                                shareState: CustomTabsShareState.on,
                              ),
                              safariVCOptions:
                                  const SafariViewControllerOptions(
                                barCollapsingEnabled: true,
                                dismissButtonStyle:
                                    SafariViewControllerDismissButtonStyle
                                        .close,
                                modalPresentationCapturesStatusBarAppearance:
                                    true,
                              ),
                            );
                          },
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "More",
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                letterSpacing: .620,
                                wordSpacing: 2.0,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
        ],
      ),
    );
  }
}
