// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MedicinePrescriptionDetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MedicinePrescriptionDetails _$MedicinePrescriptionDetailsFromJson(
        Map<String, dynamic> json) =>
    MedicinePrescriptionDetails()
      ..prescription_id = json['prescription_id'] as int
      ..timestamp = json['timestamp'] as String
      ..medicines = json['medicines'] as List<dynamic>
      ..labtests = json['labtests'] as List<dynamic>
      ..followups = json['followups'];

Map<String, dynamic> _$MedicinePrescriptionDetailsToJson(
        MedicinePrescriptionDetails instance) =>
    <String, dynamic>{
      'prescription_id': instance.prescription_id,
      'timestamp': instance.timestamp,
      'medicines': instance.medicines,
      'labtests': instance.labtests,
      'followups': instance.followups,
    };
