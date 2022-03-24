import 'package:json_annotation/json_annotation.dart';
part 'PatientModel.g.dart';

@JsonSerializable()
class PatientModel {
  String NHID = "";
  String name = "";
  String gender = "";
  String height = "";
  String weight = "";
  String dob = "";
  String mobile_number = "";
  String aadhar_number = "";
  String blood_group = "";
  String address = "";
  int pincode = 0;
  String emergency_contact_name = "";
  String emergency_contact_number = "";
  String dependant = "";
  bool dependee = false;

  PatientModel();
  factory PatientModel.fromJson(Map<String,dynamic> json) => _$PatientModelFromJson(json);
  Map<String,dynamic> toJson() => _$PatientModelToJson(this);
}