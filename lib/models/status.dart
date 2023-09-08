// ignore_for_file: depend_on_referenced_packages

import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';
part 'status.g.dart';

@JsonSerializable(explicitToJson: true)
class Status {
  @JsonKey(includeFromJson: false,includeToJson: false)
  String? id;
  String? imgUrl;
  String? createdAt;
  bool? isActive;

  Status({
    this.id,
    this.imgUrl,
    this.createdAt,
    this.isActive,
  });
  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
  Map<String, dynamic> toJson() => _$StatusToJson(this);
}
