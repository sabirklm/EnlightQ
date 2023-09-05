import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  String? id;
  String? username;
  String? email;
  String? avatarUrl;
  List<String>? favoriteCourses;
  List<String>? enrolledCourses;

  User({
    this.id,
    this.username,
    this.email,
    this.avatarUrl,
    this.favoriteCourses,
    this.enrolledCourses,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
