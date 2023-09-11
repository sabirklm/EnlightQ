// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentEvent _$RecentEventFromJson(Map<String, dynamic> json) => RecentEvent(
      title: json['title'] as String?,
      type: json['type'] as String?,
      desc: json['desc'] as String?,
      imgUrl: json['imgUrl'] as String?,
      cratedAt: json['cratedAt'] as String?,
    );

Map<String, dynamic> _$RecentEventToJson(RecentEvent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'desc': instance.desc,
      'imgUrl': instance.imgUrl,
      'cratedAt': instance.cratedAt,
    };
