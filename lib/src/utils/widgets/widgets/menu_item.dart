import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/size_config.dart';


class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.name, required this.icon, required this.onPressed});

 final String  name;
 final IconData icon;
 final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: SizeConfig(context).getProportionateScreenHeight(40),
        child: Row(
          children: [
            Icon(icon, size: 20, color:  Colors.white,),
            SizedBox(width:SizeConfig(context).getProportionateScreenWidth(40),),
            Text(name,style: const TextStyle(fontSize: 20, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}