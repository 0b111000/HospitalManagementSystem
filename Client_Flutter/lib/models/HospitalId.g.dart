// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HospitalId.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalId _$HospitalIdFromJson(Map<String, dynamic> json) => HospitalId()
  ..hospital_id = json['hospital_id'] as int
  ..secret_phrase = json['secret_phrase'] as String
  ..hospital_name = json['hospital_name'] as String;

Map<String, dynamic> _$HospitalIdToJson(HospitalId instance) =>
    <String, dynamic>{
      'hospital_id': instance.hospital_id,
      'secret_phrase': instance.secret_phrase,
      'hospital_name': instance.hospital_name,
    };
