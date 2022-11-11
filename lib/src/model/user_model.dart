
import 'package:json_annotation/json_annotation.dart';

// To auto generate the files using the below command
// flutter pub run build_runner build

part 'user_model.g.dart';

@JsonSerializable()
class Usermodel {
  String? userid;
  String? sponsorid;
  String? sponsorname;
  String? firstname;
  String? lastname;
  String? email;
  String? phone;
  String? investamount;

  Usermodel({
    this.userid,
    this.sponsorid,
    this.sponsorname,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
    this.investamount,
  });
  factory Usermodel.fromJson(Map<String, dynamic> json) =>
      _$UsermodelFromJson(json);
  Map<String, dynamic> toJson() => _$UsermodelToJson(this);
}
