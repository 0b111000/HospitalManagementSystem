// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HospitalModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalModel _$HospitalModelFromJson(Map<String, dynamic> json) =>
    HospitalModel()
      ..name = json['name'] as String
      ..id = json['id'] as String
      ..doctors = json['doctors'] as List<dynamic>
      ..contact_number = json['contact_number'] as int
      ..timings = json['timings'] as String
      ..address = json['address'] as String
      ..is_multi_chain = json['is_multi_chain'] as bool
      ..chain_name = json['chain_name'] as String;

Map<String, dynamic> _$HospitalModelToJson(HospitalModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'doctors': instance.doctors,
      'contact_number': instance.contact_number,
      'timings': instance.timings,
      'address': instance.address,
      'is_multi_chain': instance.is_multi_chain,
      'chain_name': instance.chain_name,
    };
