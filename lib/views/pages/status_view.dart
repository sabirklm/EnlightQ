import 'package:flutter/material.dart';
import 'package:story/story.dart';

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: StoryPageView(
                itemBuilder: (context, pageIndex, storyIndex) {
                  return Center(
                    child: Text(
                        "Index of PageView: $pageIndex Index of story on each page: $storyIndex"),
                  );
                },
                storyLength: (pageIndex) {
                  return 3;
                },
                pageLength: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
