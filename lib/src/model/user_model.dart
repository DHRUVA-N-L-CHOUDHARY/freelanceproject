
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
  String? profileid;
  String? profilePic;
  String? dob;
  String? gender;
  String? bankname;
  String? branch;
  String? accountnum;
  String? ifsccode;
  String? address;
  String? country;
  String? state;
  String? city;
  String? code;
  String? pincode;

  Usermodel({
    this.userid,
    this.sponsorid,
    this.sponsorname,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
    this.investamount,
    this.profileid,
    this.accountnum,
    this.address,
    this.bankname,
    this.branch,
    this.city,
    this.code,
    this.country,
    this.profilePic,
    this.dob,
    this.gender,
    this.ifsccode,
    this.pincode,
    this.state
  });
  factory Usermodel.fromJson(Map<String, dynamic> json) =>
      _$UsermodelFromJson(json);
  Map<String, dynamic> toJson() => _$UsermodelToJson(this);
}
