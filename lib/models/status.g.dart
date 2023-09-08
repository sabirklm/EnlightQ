// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      imgUrl: json['imgUrl'] as String?,
      createdAt: json['createdAt'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'imgUrl': instance.imgUrl,
      'createdAt': instance.createdAt,
      'isActive': instance.isActive,
    };
