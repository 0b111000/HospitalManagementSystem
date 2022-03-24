import 'package:json_annotation/json_annotation.dart';
part 'BillDetails.g.dart';

@JsonSerializable()
class BillDetails {
  int prescription_id = 0;
  int bill_id=0;
  String patient_name = "";
  String patient_contact = "";
  List<dynamic>bill_details=[];
  BillDetails();
  factory BillDetails.fromJson(Map<String,dynamic> json) => _$BillDetailsFromJson(json);
  Map<String,dynamic> toJson() => _$BillDetailsToJson(this);
}