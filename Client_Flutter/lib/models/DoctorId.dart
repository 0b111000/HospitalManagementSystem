import 'package:json_annotation/json_annotation.dart';
part 'DoctorId.g.dart';

@JsonSerializable()
class DoctorId {
  int docid = 0;
  String secret_phrase = "";
  String name = "";
  DoctorId();
  factory DoctorId.fromJson(Map<String,dynamic> json) => _$DoctorIdFromJson(json);
  Map<String,dynamic> toJson() => _$DoctorIdToJson(this);
}