// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';
part 'question.g.dart';

enum LayoutType {
  home,
  type1,
  type2,
  type,
}

@JsonSerializable(explicitToJson: true)
class HomeLayout {
  String? id;
  String? title;
  List<String>? questionPapersIds;
  String? layoutType;

  HomeLayout({
    this.id,
    this.title,
    this.questionPapersIds,
    this.layoutType,
  });
  factory HomeLayout.fromJson(Map<String, dynamic> json) =>
      _$HomeLayoutFromJson(json);
  Map<String, dynamic> toJson() => _$HomeLayoutToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Section {
  String? type;
  String? passsage;
  List<Question>? questions;

  Section({
    this.type,
    this.passsage,
    this.questions,
  });
  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
  Map<String, dynamic> toJson() => _$SectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Question {
  final String id;
  final String text;
  final List<Option> options;
  final String explanation;
   String? questionPaperId;

  Question({
    required this.id,
    required this.text,
    required this.options,
    required this.explanation,
    this.questionPaperId,
  });

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Option {
  int? index;
  String? text;
  bool? isCorrect;
  Option({
    this.index,
    this.text,
    this.isCorrect,
  });
  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
  Map<String, dynamic> toJson() => _$OptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuestionPaper {
  String? id;
  final List<Section>? sections;
  List<String>? imgUrl;

  QuestionPaper({
    this.id,
    this.sections,
    this.imgUrl,
  });

  factory QuestionPaper.fromJson(Map<String, dynamic> json) =>
      _$QuestionPaperFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionPaperToJson(this);
}
