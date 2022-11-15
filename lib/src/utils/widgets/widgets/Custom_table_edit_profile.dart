import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/controllers/edit_profile_page_controller.dart';
import 'package:freelanceproject/src/utils/constants/constants/size_config.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_form_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_radio_list_tile.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_table_element.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/date_picker/date_picker.dart';
import 'package:freelanceproject/src/views/Edit_profile_view.dart';
import 'package:get/get.dart';

class CustomTableEditProfileView extends StatelessWidget {
  const CustomTableEditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    EditprofileController _controller = Get.put(EditprofileController());
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: FlexColumnWidth(SizeConfig(context).getProportionateScreenWidth(70)),
        1: FlexColumnWidth(SizeConfig(context).getProportionateScreenWidth(20)),
        2: FlexColumnWidth(SizeConfig(context).getProportionateScreenWidth(120))
      },
      // defaultColumnWidth: const FixedColumnWidth(100.0),
      children: [
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "First Name",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "First name",
            controller: _controller.firstnameController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "Last name",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "Last name",
            controller: _controller.lastnameController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "DOB",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          Padding(
            padding:
                EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [DatePicker(
                  onChanged: (DateTime dt) {
                    _controller.dobController.text = dt.toString();
                  },
                )],
              ),
            ),
          ),
        ]),
        TableRow(children: [
          CustomTextfield(
            displaytxt: "Gender",
            color: Colors.black,
            fontsize: 15,
          ),
          Text(":"),
          CustomRadioListtile(
            onChanged: (String res) {
              _controller.genderController.text = res;
            },
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "BANK NAME",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "BANK NAME",
            controller: _controller.banknameController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "BRANCH",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "BRANCH",
            controller: _controller.branchController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "ACCOUNT-NO",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "ACCOUNT-NO",
            controller: _controller.accountnumController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "IFSC CODE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "IFSC CODE",
            controller: _controller.ifscController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "ADDRESS",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "ADDRESS",
            controller: _controller.addressController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "COUNTRY",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "COUNTRY",
            controller: _controller.countryController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "STATE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "STATE",
            controller: _controller.stateController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "CITY",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "CITY",
            controller: _controller.cityController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "CODE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "CODE",
            controller: _controller.codeController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "PHONE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "PHONE",
            controller: _controller.phoneController,
            option: true,
          ),
        ]),
        TableRow(children: [
          const CustomTextfield(
            displaytxt: "PINCODE",
            color: Colors.black,
            fontsize: 15,
          ),
          const Text(":"),
          InputTextwidget(
            hintText: "PINCODE",
            controller: _controller.pincodeController,
            option: true,
          ),
        ]),
      ],
    );
  }
}
