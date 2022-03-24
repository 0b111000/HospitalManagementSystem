// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PatientMedicalHistory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientMedicalHistory _$PatientMedicalHistoryFromJson(
        Map<String, dynamic> json) =>
    PatientMedicalHistory()
      ..appointment_id = json['appointment_id'] as int
      ..nhid = json['nhid'] as int
      ..name = json['name'] as String
      ..timestamp = json['timestamp'] as String
      ..hospital = json['hospital'] as int
      ..docid = json['docid'] as int
      ..opd_status = json['opd_status'] as String
      ..diagnosis_details = json['diagnosis_details'] as String
      ..medical_inferences = json['medical_inferences'] as String
      ..prescription = json['prescription'] as List<dynamic>
      ..lab_reports = json['lab_reports']
      ..referal = json['referal'];

Map<String, dynamic> _$PatientMedicalHistoryToJson(
        PatientMedicalHistory instance) =>
    <String, dynamic>{
      'appointment_id': instance.appointment_id,
      'nhid': instance.nhid,
      'name': instance.name,
      'timestamp': instance.timestamp,
      'hospital': instance.hospital,
      'docid': instance.docid,
      'opd_status': instance.opd_status,
      'diagnosis_details': instance.diagnosis_details,
      'medical_inferences': instance.medical_inferences,
      'prescription': instance.prescription,
      'lab_reports': instance.lab_reports,
      'referal': instance.referal,
    };
