import 'package:json_annotation/json_annotation.dart';
import 'entities.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final Gender gender;
  final Name name;
  final Location location;
  final String email;
  final Dob dob;
  final Dob registered;
  final String phone;
  final String cell;
  final Picture picture;
  final String nat;

  User({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.picture,
    required this.nat,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
