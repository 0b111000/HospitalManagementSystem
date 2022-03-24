import 'package:json_annotation/json_annotation.dart';
part 'HospitalModel.g.dart';

@JsonSerializable()
class HospitalModel {
  String name = "";
  String id = "";
  List<dynamic> doctors = [];
  int contact_number = 0;
  String timings = "";
  String address = "";
  bool is_multi_chain = false;
  String chain_name = "";
  HospitalModel();
  factory HospitalModel.fromJson(Map<String,dynamic> json) => _$HospitalModelFromJson(json);
  Map<String,dynamic> toJson() => _$HospitalModelToJson(this);
}