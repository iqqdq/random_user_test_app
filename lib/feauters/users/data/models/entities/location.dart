import 'package:json_annotation/json_annotation.dart';
import 'entities.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  final Street street;
  final String city;
  final String state;
  final String country;

  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
