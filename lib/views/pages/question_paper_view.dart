import 'package:enlight_q_app/mock_data.dart';
import 'package:enlight_q_app/models/question.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionPaperPage extends StatelessWidget {
  const QuestionPaperPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ...List.generate(
                  questions.length,
                  (index) => QuestionCard(
                    question: questions[index],
                    questionIndex: index,
                  ),
                ),
              ],
            ),
          ),
        ],
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
              "${index + 1}. ${question.options[index]}",
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
