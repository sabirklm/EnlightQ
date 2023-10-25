import 'package:enlight_q_app/controllers/home_controller.dart';
import 'package:enlight_q_app/views/widgets/decorated_container.dart';
import 'package:enlightq_service_package/models/question.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionPaperPage extends StatelessWidget {
  const QuestionPaperPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final HomeController controller = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () {
          return ListView(
            children: [
              Column(
                children: [
                  ...List.generate(
                    controller.questions.length,
                    (index) => SizedBox(
                      width: width,
                      child: DecoratedContainer(
                        child: QuestionCard(
                          question: controller.questions[index],
                          questionIndex: index,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  final Question question;
  final int questionIndex;
  const QuestionCard({
    super.key,
    required this.question,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${questionIndex + 1}. ${question.text}",
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        ...List.generate(
          question.options.length,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${index + 1}. ${question.options[index].text ?? ''}",
              style: GoogleFonts.nunito(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
