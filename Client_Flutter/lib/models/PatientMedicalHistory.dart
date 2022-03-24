import 'package:json_annotation/json_annotation.dart';
part 'PatientMedicalHistory.g.dart';

@JsonSerializable()
class PatientMedicalHistory{
  int appointment_id = 0;
  int nhid = 0;
  String name = "";
  String timestamp = "";
  int hospital = 0;
  int docid = 0;
  String opd_status = "";
  String diagnosis_details = "";
  String medical_inferences = "";
  List prescription = [];
  dynamic lab_reports = {};
  dynamic referal = {};
  PatientMedicalHistory();
  factory PatientMedicalHistory.fromJson(Map<String,dynamic> json) => _$PatientMedicalHistoryFromJson(json);
  Map<String,dynamic> toJson() => _$PatientMedicalHistoryToJson(this);
}