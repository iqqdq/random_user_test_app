import 'package:json_annotation/json_annotation.dart';

part 'failure_response.g.dart';

@JsonSerializable()
class FailureResponse {
  final String error;

  FailureResponse({required this.error});

  factory FailureResponse.fromJson(Map<String, dynamic> json) =>
      _$FailureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FailureResponseToJson(this);
}
