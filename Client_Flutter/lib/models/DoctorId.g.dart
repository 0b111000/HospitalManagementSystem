// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DoctorId.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorId _$DoctorIdFromJson(Map<String, dynamic> json) => DoctorId()
  ..docid = json['docid'] as int
  ..secret_phrase = json['secret_phrase'] as String
  ..name = json['name'] as String;

Map<String, dynamic> _$DoctorIdToJson(DoctorId instance) => <String, dynamic>{
      'docid': instance.docid,
      'secret_phrase': instance.secret_phrase,
      'name': instance.name,
    };
