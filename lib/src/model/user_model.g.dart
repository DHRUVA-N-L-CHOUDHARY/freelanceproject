// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usermodel _$UsermodelFromJson(Map<String, dynamic> json) => Usermodel(
      userid: json['userid'] as String?,
      sponsorid: json['sponsorid'] as String?,
      sponsorname: json['sponsorname'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      bankname: json['bankname'] as String?,
      branch: json['branch'] as String?,
      accountnum: json['accountnum'] as String?,
      ifsccode: json['ifsccode'] as String?,
      address: json['address'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      code: json['code'] as String?,
      pincode: json['pincode'] as String?,
      dob: json['dob'] as String?,
      profilePic: json['profilepic'] as String?,
      investamount: json['investamount'] as String?,
    );

Map<String, dynamic> _$UsermodelToJson(Usermodel instance) => <String, dynamic>{
      'userid': instance.userid,
      "sponsorid": instance.sponsorid,
      "sponsorname": instance.sponsorname,
      "firstname": instance.firstname,
      "lastname": instance.lastname,
      "email": instance.email,
      "phone": instance.phone,
      "profileid": instance.profileid,
      "investamount": instance.investamount,
      "accountnum": instance.accountnum,
      "address": instance.address,
      "bankname": instance.bankname,
      "branch": instance.branch,
      "city": instance.city,
      "code": instance.code,
      "country": instance.country,
      "dob": instance.dob,
      "gender": instance.gender,
      "ifsccode": instance.ifsccode,
      "pincode": instance.pincode,
      "state": instance.state,
      "profilepic": instance.profilePic
    };
