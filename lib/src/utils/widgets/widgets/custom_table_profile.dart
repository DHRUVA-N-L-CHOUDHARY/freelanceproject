// ignore: prefer_const_literals_to_create_immutables
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/model/user_model.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/image_upload_widget.dart';


class CustomTableRow extends StatefulWidget {
  const CustomTableRow({super.key});

  @override
  State<CustomTableRow> createState() => _CustomTableRowState();
}

class _CustomTableRowState extends State<CustomTableRow> {
  bool profilePicIsLoading = false;

  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: db.collection('users').where("email",isEqualTo: FirebaseAuth.instance.currentUser?.email).get(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return CircularProgressIndicator();
          case ConnectionState.active:
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ConnectionState.done:
            Usermodel _user = Usermodel.fromJson(snapshot.data!.docs[0].data());
            return ListView(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                // const buildCard(
                //   inputpic: profileimageicon,
                //   height: 120,
                // ),
                const ImageUploadWidget(),
                DataTable(
                  dividerThickness: 0.0,
                  columns: [
                    const DataColumn(
                        label: Text('Field',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                    const DataColumn(label: Text(":")),
                    const DataColumn(
                        label: Text('Detail',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold))),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "First Name",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.firstname ?? "firstname",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Last Name",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.lastname ?? "lastname",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Profile ID",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.profileid ?? "profileid",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Email ID",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.email ?? "email",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Sponsor ID",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.sponsorid ?? "sponsor ID",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Sponsor Name",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.sponsorname ?? "sponsor name",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Gender",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.gender ?? "gender",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "DOB",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.dob ?? "dob",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Phone",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.phone ?? "phone",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Investment Amount",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.investamount ?? "invest amount",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Address",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.address ?? "address",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Bank Name",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.bankname ?? "bank name",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Branch",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.branch ?? "branch",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "Account number",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.accountnum ?? "account number",
                        color: Colors.black,
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(CustomTextfield(
                        displaytxt: "IFSC Code",
                        color: Colors.black,
                      )),
                      DataCell(Text(":")),
                      DataCell(CustomTextfield(
                        displaytxt: _user.ifsccode ?? "ifsccode",
                        color: Colors.black,
                      )),
                    ]),
                  ],
                ),
              ],
            );
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
