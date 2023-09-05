import 'package:enlight_q_app/models/question.dart';

var question = Question(
  id: "id",
  text:
      "Let ABCD be a parallelogram such that the coordinates of its three vertices A, B, C are (1, 1), (3, 4) and (−2, 8), respectively. Then, the coordinates of the vertex D are",
  options: ["(−4, 5)", "(4, 5)", "(−3, 4)", "(0, 11)"],
  correctOptionIndex: 0,
  explanation: "explanation",
);
var question2 = Question(
  id: "id",
  text:
      "In the context of the passage, all of the following can be considered examples of human-centered automation EXCEPT:",
  options: [
    "software that offers interpretations when requested by the human operator.",
    "software that auto-completes text when the user writes an email.",
    "medical software that provides optional feedback on the doctor's analysis of the medical situation.",
    "a smart-home system that changes the temperature as instructed by the resident."
  ],
  correctOptionIndex: 0,
  explanation: "explanation",
);
var questions = <Question>[
  ...List.generate(3, (index) => question),
  ...List.generate(4, (index) => question2),
  
];
