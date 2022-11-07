import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
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
                    "TestCuri",
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text("test1231@gmail.com",style: TextStyle(fontSize: 15)),
              const SizedBox(height: 8),
              const Text(
                'Sponsor Name: Nisham ',style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 8),
              const Text(
                'Profile ID: 2022102603', style: TextStyle(fontSize: 15)
              ),
              const SizedBox(height: 8)
            ],
          ),
          ClipOval(
            child: CircleAvatar(
                radius: 30,
                child: Image.asset(
                  profileimageicon,
                )),
          )
        ],
      ),
    );
  }
}
