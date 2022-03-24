import 'package:json_annotation/json_annotation.dart';
part 'HospitalId.g.dart';

@JsonSerializable()
class HospitalId{
  int hospital_id = 0;
  String secret_phrase = "";
  String hospital_name = "";
  HospitalId();
  factory HospitalId.fromJson(Map<String,dynamic> json) => _$HospitalIdFromJson(json);
  Map<String,dynamic> toJson() => _$HospitalIdToJson(this);
}