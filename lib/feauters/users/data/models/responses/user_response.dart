import 'package:json_annotation/json_annotation.dart';
import '../entities/entities.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  final List<User> results;

  UserResponse({required this.results});

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
