// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/controllers/edit_profile_page_controller.dart';
import 'package:freelanceproject/src/model/user_model.dart';
import 'package:freelanceproject/src/services/database.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_table_edit_profile.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class EditprofileView extends StatelessWidget {
  const EditprofileView({super.key});

  @override
  Widget build(BuildContext context) {
    EditprofileController _controller = Get.put(EditprofileController());
    DatabaseMethods db = DatabaseMethods();
    return Scaffold(
      appBar: AppBarTemplate(
        text: "Edit Profile",
        option: 1,
        // onPressed:() { Get.toNamed("/navigation"); }
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CustomTextfield(
                displaytxt: "PERSONAL DETAILS",
                color: Colors.black,
                fontsize: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: CustomTableEditProfileView(),
              ),
              DefaultButton(
                text: "Save Changes",
                margins: 10,
                press: () {
                  Usermodel _usermodel = Usermodel(
                    email: FirebaseAuth.instance.currentUser?.email,
                    firstname: _controller.firstnameController.text,
                    lastname: _controller.lastnameController.text,
                    dob: _controller.dobController.text,
                    gender: _controller.genderController.text,
                    bankname: _controller.banknameController.text,
                    branch: _controller.branchController.text,
                    accountnum: _controller.accountnumController.text,
                    ifsccode: _controller.ifscController.text,
                    address: _controller.addressController.text,
                    country: _controller.countryController.text,
                    state: _controller.stateController.text,
                    city: _controller.cityController.text,
                    code: _controller.codeController.text,
                    pincode: _controller.pincodeController.text,
                    phone: _controller.phoneController.text,
                  );
                  print(_usermodel.toJson());
                  db.UpdateuserInfo(_usermodel).then((value) => Get.offAllNamed("/navigation"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
