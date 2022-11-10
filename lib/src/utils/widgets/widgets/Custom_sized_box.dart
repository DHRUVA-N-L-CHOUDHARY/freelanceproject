import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/size_config.dart';


class CustomSizedBox extends StatelessWidget {
  final double inputHeight;
  final double inputWidth;
  final Color color;
  const CustomSizedBox(
      {Key? key,
      required this.inputHeight,
      required this.inputWidth,
      this.color = Colors.white,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(color == Colors.white)
    // ignore: curly_braces_in_flow_control_structures
    return SizedBox(
      height: SizeConfig(context).getProportionateScreenHeight(inputHeight),
      width: SizeConfig(context).getProportionateScreenWidth(inputWidth),
      child: DecoratedBox(
        decoration: BoxDecoration(
          // color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig(context).getProportionateroundess()),
          ),
        ),
      ),
    );
    else
    {
       return SizedBox(
      height: SizeConfig(context).getProportionateScreenHeight(inputHeight),
      width: SizeConfig(context).getProportionateScreenWidth(inputWidth),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig(context).getProportionateroundess()),
          ),
        ),
      ),
    );
    }
  }
}
