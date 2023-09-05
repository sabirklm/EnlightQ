// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';
part 'question.g.dart';

@JsonSerializable()
class Question {
  final String id;
  final String text;
  final List<String> options;
  final int correctOptionIndex;
  final String explanation;

  Question({
    required this.id,
    required this.text,
    required this.options,
    required this.correctOptionIndex,
    required this.explanation,
  });

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}

class QuestionPaper {
  String? id;
  final List<Question>? questions;

  QuestionPaper({
    this.id,
    this.questions,
  });
}
