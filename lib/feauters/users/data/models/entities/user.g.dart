// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      email: json['email'] as String,
      dob: Dob.fromJson(json['dob'] as Map<String, dynamic>),
      registered: Dob.fromJson(json['registered'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      cell: json['cell'] as String,
      picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
      nat: json['nat'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'gender': _$GenderEnumMap[instance.gender]!,
      'name': instance.name,
      'location': instance.location,
      'email': instance.email,
      'dob': instance.dob,
      'registered': instance.registered,
      'phone': instance.phone,
      'cell': instance.cell,
      'picture': instance.picture,
      'nat': instance.nat,
    };

const _$GenderEnumMap = {
  Gender.female: 'female',
  Gender.male: 'male',
};
