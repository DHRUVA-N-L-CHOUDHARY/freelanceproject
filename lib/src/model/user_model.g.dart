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
      "investamount": instance.investamount,
    };
