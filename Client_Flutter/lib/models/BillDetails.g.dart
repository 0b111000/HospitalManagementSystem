// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BillDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillDetails _$BillDetailsFromJson(Map<String, dynamic> json) => BillDetails()
  ..prescription_id = json['prescription_id'] as int
  ..bill_id = json['bill_id'] as int
  ..patient_name = json['patient_name'] as String
  ..patient_contact = json['patient_contact'] as String
  ..bill_details = json['bill_details'] as List<dynamic>;

Map<String, dynamic> _$BillDetailsToJson(BillDetails instance) =>
    <String, dynamic>{
      'prescription_id': instance.prescription_id,
      'bill_id': instance.bill_id,
      'patient_name': instance.patient_name,
      'patient_contact': instance.patient_contact,
      'bill_details': instance.bill_details,
    };
