import 'package:json_annotation/json_annotation.dart';
part 'DoctorModel.g.dart';

@JsonSerializable()
class DoctorModel {
  String license = "";
  int docid = 0;
  String name = "";
  String education = "";
  String specialization = "";
  int years_of_experience = 0;
  String hospital = "";
  int contact_number = 0;
  String contact_mailid = "";

  DoctorModel();
  factory DoctorModel.fromJson(Map<String,dynamic> json) => _$DoctorModelFromJson(json);
  Map<String,dynamic> toJson() => _$DoctorModelToJson(this);
}