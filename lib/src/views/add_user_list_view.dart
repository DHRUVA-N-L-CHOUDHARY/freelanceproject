import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/appbar.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';

class AddUserListView extends StatelessWidget {
  const AddUserListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarTemplate(
          option: 2,
          text: "Add User List View",
        ),
        body: ListView(children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 3.0, right: 8.0, left: 8.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CustomTextfield(
                    displaytxt: "ADD USERS LIST",
                    color: Colors.white,
                    fontsize: 16,
                  ),
                ],
              ),
            ),
          ),
          DataTable(
              columnSpacing: 7,
              // ignore: prefer_const_literals_to_create_immutables
              columns: [
                const DataColumn(
                    label: CustomTextfield(
                  displaytxt: "S.NO",
                  color: Colors.black,
                )),
                const DataColumn(
                    label: CustomTextfield(
                  displaytxt: "USERNAME",
                  color: Colors.black,
                )),
                const DataColumn(
                    label: CustomTextfield(
                  displaytxt: "PROFILE ID",
                  color: Colors.black,
                )),
                const DataColumn(
                    label: CustomTextfield(
                  displaytxt: "INVESTMENT",
                  color: Colors.black,
                )),
                const DataColumn(
                    label: CustomTextfield(
                  displaytxt: "DATE",
                  color: Colors.black,
                ))
              ],
              rows: []),
          const SizedBox(
            width: double.infinity,
            height: 50,
            child: TextButton(
              onPressed: null,
              child: Text(
                "View More...",
              ),
            ),
          ),
        ]));
  }
}
