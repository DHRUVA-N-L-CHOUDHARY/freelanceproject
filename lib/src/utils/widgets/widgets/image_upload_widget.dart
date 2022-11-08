import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freelanceproject/src/config/image_upload.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';

class ImageUploadWidget extends StatefulWidget {
  const ImageUploadWidget({super.key});

  @override
  State<ImageUploadWidget> createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
   bool profilePicIsLoading = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd, 
            children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipOval(
                child: CircleAvatar(
                  radius: 45,
                  child: profilePicIsLoading
                      ? const CircularProgressIndicator()
                      :
                      // : profile.profilePic == null
                      //     ? Image.asset(
                      //         "lib/src/assets/profile.png")
                      //     : Image.network(profile.profilePic!
                      Image.asset(profileimageicon),
                ),
              ),
            ),
            ClipOval(
                child: InkWell(
                  onTap: () async {
                    setState(() {
                      profilePicIsLoading = true;
                    });
                    String url = await Uploader().uploadFile("profile");
                    setState(() {
                      profilePicIsLoading = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 5, left: 3, right: 3),
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 50, spreadRadius: 0, offset: Offset(0, 15))
                    ]),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 17,
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                ),
              ),
            ]),
          ),
    );
  }
}
