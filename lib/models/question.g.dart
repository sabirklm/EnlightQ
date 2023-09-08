// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeLayout _$HomeLayoutFromJson(Map<String, dynamic> json) => HomeLayout(
      id: json['id'] as String?,
      title: json['title'] as String?,
      questionPapersIds: (json['questionPapersIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      layoutType: json['layoutType'] as String?,
    );

Map<String, dynamic> _$HomeLayoutToJson(HomeLayout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'questionPapersIds': instance.questionPapersIds,
      'layoutType': instance.layoutType,
    };

Section _$SectionFromJson(Map<String, dynamic> json) => Section(
      type: json['type'] as String?,
      passsage: json['passsage'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionToJson(Section instance) => <String, dynamic>{
      'type': instance.type,
      'passsage': instance.passsage,
      'questions': instance.questions?.map((e) => e.toJson()).toList(),
    };

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      id: json['id'] as String,
      text: json['text'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      explanation: json['explanation'] as String,
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'options': instance.options.map((e) => e.toJson()).toList(),
      'explanation': instance.explanation,
    };

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      index: json['index'] as int?,
      text: json['text'] as String?,
      isCorrect: json['isCorrect'] as bool?,
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'index': instance.index,
      'text': instance.text,
      'isCorrect': instance.isCorrect,
    };

QuestionPaper _$QuestionPaperFromJson(Map<String, dynamic> json) =>
    QuestionPaper(
      id: json['id'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
      imgUrl:
          (json['imgUrl'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$QuestionPaperToJson(QuestionPaper instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sections': instance.sections?.map((e) => e.toJson()).toList(),
      'imgUrl': instance.imgUrl,
    };
