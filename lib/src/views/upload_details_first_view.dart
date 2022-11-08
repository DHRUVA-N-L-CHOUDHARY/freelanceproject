import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/controllers/Upload_details_first_controller.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_form_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_button.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/image_upload_widget.dart';
import 'package:get/get.dart';

class UploaddetailsfirstView extends StatefulWidget {
  const UploaddetailsfirstView({super.key});

  @override
  State<UploaddetailsfirstView> createState() => _UploaddetailsfirstViewState();
}

class _UploaddetailsfirstViewState extends State<UploaddetailsfirstView> {
  UploaddetailsfirstController controller = UploaddetailsfirstController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarTemplate(
        text: "UPLOAD DETAILS",
        option: 1,
      ),
      body: ListView(children: [
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
            text: "Save Detials",
            margins: 5.0,
            press: () {
              // controller.signUpWithEmailAndPassword();
              Get.toNamed("/dashboard");
            }),
        const SizedBox(
          height: 30,
        ),
      ]),
    );
  }
}
