// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imageresultpage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImageresultpageModel _$ImageresultpageModelFromJson(
  Map<String, dynamic> json,
) => _ImageresultpageModel(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
);

Map<String, dynamic> _$ImageresultpageModelToJson(
  _ImageresultpageModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
};
