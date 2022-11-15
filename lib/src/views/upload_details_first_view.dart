import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/controllers/Upload_details_first_controller.dart';
import 'package:freelanceproject/src/controllers/auth_client_controller.dart';
import 'package:freelanceproject/src/controllers/network_client_controller.dart';
import 'package:freelanceproject/src/controllers/registration_controller.dart';
import 'package:freelanceproject/src/model/user_model.dart';
import 'package:freelanceproject/src/services/database.dart';
import 'package:freelanceproject/src/utils/constants/constants/size_config.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_form_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_radio_list_tile.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_loading.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/date_picker/date_picker.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/image_upload_widget.dart';
import 'package:get/get.dart';

class UploaddetailsfirstView extends StatefulWidget {
  const UploaddetailsfirstView({super.key});

  @override
  State<UploaddetailsfirstView> createState() => _UploaddetailsfirstViewState();
}

class _UploaddetailsfirstViewState extends State<UploaddetailsfirstView> {
  UploaddetailsfirstController controller = Get.put(UploaddetailsfirstController());
  DatabaseMethods db = DatabaseMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTemplate(
        text: "UPLOAD DETAILS",
        option: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
        child: Form(
          key: controller.savedetailsformkey,
          child: ListView(children: [
            const ImageUploadWidget(),
            const Text(
              "Sponsor id:",
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            InputTextwidget(
              hintText: 'Enter Sponsor Id',
              option: true,
              controller: controller.sponsoridController,
            ),
            const Text(
              "Sponsor name:",
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            InputTextwidget(
              hintText: 'Enter Sponsor name',
              option: true,
              controller: controller.sponsornameController,
            ),
            const Text(
              "First name:",
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            InputTextwidget(
              hintText: 'Enter your First name',
              option: true,
              controller: controller.firstnameController,
            ),
            const Text(
              "Last name:",
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            InputTextwidget(
              hintText: 'Last name',
              option: true,
              controller: controller.lastnameController,
            ),
            const Text(
              "Phone number:",
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            InputTextwidget(
              hintText: 'Phone number',
              controller: controller.phoneController,
              option: true,
              isDigitsOnly: true,
            ),
            Text(
              "Date of Birth",
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            Padding(
              padding:
                  EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DatePicker(
                      onChanged: (DateTime dt) {
                        controller.dobController.text = dt.toString();
                      },
                    )
                  ],
                ),
              ),
            ),
            Text(
              "Gender",
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomRadioListtile(
                onChanged: (String res) {
                  controller.genderController.text = res;
                },
              ),
            ),
            const Text(
              "Invest amount:",
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            InputTextwidget(
              hintText: 'curi 1000',
              controller: controller.investamountController,
              option: true,
            ),
            const Text(
              "Upload Pay slip:",
              style: TextStyle(fontFamily: 'Roboto'),
            ),
            InputTextwidget(
              hintText: 'No file attached',
              option: true,
            ),
            DefaultButton(
                text: "Save Details",
                margins: 5.0,
                press: () async {
                  if (controller.savedetailsformkey.currentState!.validate()) {
                    Get.focusScope?.unfocus();
                    showLoader(Get.context);
                    Usermodel _usermodel = Usermodel(
                        sponsorid: controller.sponsoridController.text,
                        sponsorname: controller.sponsornameController.text,
                        firstname: controller.firstnameController.text,
                        lastname: controller.lastnameController.text,
                        email: FirebaseAuth.instance.currentUser?.email,
                        phone: controller.phoneController.text,
                        gender: controller.genderController.text,
                        dob: controller.dobController.text,
                        investamount: controller.investamountController.text);
                    print(_usermodel.toJson());
                    db.addUserInfo(_usermodel);
                    // await DioAuthClient()
                    //     .signup(_usermodel)
                    //     .then((data) {
                    Get.toNamed("/navigation");
                    // });
                  }
                }),
            const SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }
}
