import 'package:flutter/material.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/utils/constants/constants/size_config.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/Custom_sized_box.dart';
import 'package:freelanceproject/src/utils/widgets/widgets/custom_text_field.dart';

class dashboardupper extends StatelessWidget {
  const dashboardupper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig(context).getProportionatePadding() * 2,
                  left: SizeConfig(context).getProportionatePadding() * 3),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomTextfield(
                  displaytxt: "My Stats",
                  color: Colors.white,
                  fontsize: 18,
                ),
              ),
            ),
            CustomSizedBox(inputHeight: 20, inputWidth: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextfield(
                  displaytxt: "Total Wallet Balance",
                  color: Colors.grey,
                  fontsize: 12,
                ),
                CustomTextfield(
                  displaytxt: "Refral Bonus",
                  color: Colors.grey,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTextfield(
                  displaytxt: "₹ 1000.00",
                  color: Colors.white,
                  fontsize: 25,
                ),
                CustomTextfield(
                  displaytxt: "₹ 0.00",
                  color: Colors.white,
                  fontsize: 25,
                ),
              ],
            ),
            CustomSizedBox(
                inputHeight:
                    SizeConfig(context).getProportionateScreenHeight(64.400),
                inputWidth: double.infinity),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              width: SizeConfig(context).getProportionateScreenWidth(320),
              height: SizeConfig(context).getProportionateScreenHeight(52),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CustomTextfield(
                        displaytxt: "₹ 0",
                        color: Colors.black,
                        fontsize: 20,
                      ),
                      CustomTextfield(
                        displaytxt: "Level \nBonus",
                        color: Colors.black,
                        fontsize: 9,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextfield(
                        displaytxt: "₹ 0",
                        color: Colors.black,
                        fontsize: 20,
                      ),
                      CustomTextfield(
                        displaytxt: "ROI",
                        color: Colors.black,
                        fontsize: 9,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextfield(
                        displaytxt: "₹ 0",
                        color: Colors.black,
                        fontsize: 20,
                      ),
                      CustomTextfield(
                        displaytxt: "Add User\ncommission",
                        color: Colors.black,
                        fontsize: 9,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        height: SizeConfig(context).getProportionateScreenHeight(220.40),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
