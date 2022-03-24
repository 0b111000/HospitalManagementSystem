import 'package:json_annotation/json_annotation.dart';
part 'MedicinePrescriptionDetails.g.dart';

@JsonSerializable()
class MedicinePrescriptionDetails{
  int prescription_id = 0;
  String timestamp = "";
  List medicines = [];
  List labtests = [];
  dynamic followups = {};
  MedicinePrescriptionDetails();
  factory MedicinePrescriptionDetails.fromJson(Map<String,dynamic> json) => _$MedicinePrescriptionDetailsFromJson(json);
  Map<String,dynamic> toJson() => _$MedicinePrescriptionDetailsToJson(this);
}