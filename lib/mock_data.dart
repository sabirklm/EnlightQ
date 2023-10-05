
import 'package:enlightq_service_package/models/question.dart';

var question = Question(
  id: "id",
  text:
      "Let ABCD be a parallelogram such that the coordinates of its three vertices A, B, C are (1, 1), (3, 4) and (−2, 8), respectively. Then, the coordinates of the vertex D are",
  options: [
    ...List.generate(4, (index) => Option()),
  ],
  explanation: "explanation",
);
var question2 = Question(
  id: "id",
  text:
      "In the context of the passage, all of the following can be considered examples of human-centered automation EXCEPT:",
  options: [
    ...List.generate(
      4,
      (index) => Option(),
    ),
  ],
  explanation: "explanation",
);
var questions = <Question>[
  ...List.generate(3, (index) => question),
  ...List.generate(4, (index) => question2),
];
