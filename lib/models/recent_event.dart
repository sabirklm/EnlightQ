// ignore_for_file: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';
part 'recent_event.g.dart';

@JsonSerializable(explicitToJson: true)
class RecentEvent {
  @JsonKey(includeFromJson: false,includeToJson: false)
  String? id;
  String? type;
  String? title;
  String? desc;
  String? imgUrl;
  String? cratedAt;
  RecentEvent({
    this.title,
    this.id,
    this.type,
    this.desc,
    this.imgUrl,
    this.cratedAt,
  });
  factory RecentEvent.fromJson(Map<String, dynamic> json) =>
      _$RecentEventFromJson(json);
  Map<String, dynamic> toJson() => _$RecentEventToJson(this);
}
