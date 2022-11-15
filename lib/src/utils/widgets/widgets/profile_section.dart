import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/model/user_model.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';

class ProfileSection extends StatefulWidget {
  final bool edit;
  final Function(bool)? fn;
  const ProfileSection({Key? key, this.edit = false, this.fn})
      : super(key: key);
  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: db
          .collection('users')
          .where("email", isEqualTo: FirebaseAuth.instance.currentUser?.email)
          .get(),
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
            return Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            _user.firstname ?? "username",
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(_user.email ?? "email",
                          style: TextStyle(fontSize: 15)),
                      const SizedBox(height: 8),
                      Text(
                        'Sponsor Name: ${_user.sponsorname ?? "sponsorname"}',
                        style: TextStyle(fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                      const Text('Profile ID: 202210533',
                          style: TextStyle(fontSize: 15)),
                      const SizedBox(height: 8)
                    ],
                  ),
                  ClipOval(
                    child: CircleAvatar(
                        radius: 30,
                        child: Image.network(_user.profilePic ??
                            "https://firebasestorage.googleapis.com/v0/b/freelanceproject-21af8.appspot.com/o/h2epcRjd9DQout5VGWy2mTkgCw63%2Fprofile_page_image_icon.png?alt=media&token=3b51e940-daaa-4140-8255-8c7c9d8b2a90")),
                  )
                ],
              ),
            );
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
