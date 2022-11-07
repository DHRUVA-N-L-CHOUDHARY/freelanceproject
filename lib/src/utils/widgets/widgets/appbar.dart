import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/utils/constants/constants/strings.dart';

class AppBarTemplate extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String text;
  final int option;
  final IconData requiredicon;
  final int optionbutton;
  final Function? onPressed;
  final String? appbarpic;
  final Color? backcolor;
  const AppBarTemplate(
      {Key? key,
      this.text = "MEET ALL",
      this.height = kToolbarHeight,
      this.option = 1,
      this.requiredicon = Icons.abc,
      this.optionbutton = 1,
      this.onPressed,
      this.appbarpic,
      this.backcolor = kPrimaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (option == 1) {
      return AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios, color: kPrimaryColor),
        //   onPressed: () => Navigator.of(context).pop(null),
        // ),
        backgroundColor: backcolor,
        automaticallyImplyLeading: false,
        title: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        centerTitle: true,
      );
    } else if (option == 2) {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(null),
        ),
          automaticallyImplyLeading: false,
        backgroundColor: backcolor,
        title: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        centerTitle: true,
      );
    } else {
      if (optionbutton == 1) {
        return AppBar(
          title: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
          ),
          backgroundColor: backcolor,
          centerTitle: true,
        );
      } else {
        return AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(null),
            padding: const EdgeInsets.all(0.0),
          ),
          automaticallyImplyLeading: false,
          title: Image.asset(
            appbarpic!,
            height: 70,
            width: 70,
          ),
          backgroundColor: backcolor,
          actions: <Widget>[
            IconButton(
              icon: Icon(requiredicon),
              color: kPrimaryColor,
              onPressed: (() {}),
            ),
          ],
          centerTitle: true,
        );
      }
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
