import 'package:enlight_q_app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story/story.dart';

import '../widgets/loading_indicator.dart';

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Obx(() {
          return Column(
            children: [
              if (controller.isStatusLoading.value)
                const LoadingIndicator()
              else if(controller.status.isNotEmpty)
                Expanded(
                  child: StoryPageView(
                    itemBuilder: (context, pageIndex, storyIndex) {
                      return Center(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              controller.status[storyIndex].imgUrl ??
                                  "https://i.cdn.newsbytesapp.com/images/l158_11531537104319.jpg",
                              fit: BoxFit.cover,
                            ),
                            // Align(
                            //   alignment: Alignment.center,
                            //   child: Text(
                            //     "$storyIndex",
                            //     style: GoogleFonts.nunito(
                            //       fontSize: 32,
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      );
                    },
                    storyLength: (pageIndex) {
                      return controller.status.length;
                    },
                    pageLength: 1,
                  ),
                )
            ],
          );
        }),
      ),
    );
  }
}
