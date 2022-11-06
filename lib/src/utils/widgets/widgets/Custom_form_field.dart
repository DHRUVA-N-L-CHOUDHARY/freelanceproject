// // ignore_for_file: file_names

// import 'package:flutter/material.dart';
// import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
// import 'package:freelanceproject/src/utils/constants/constants/size_config.dart';

// class InputTextwidget extends StatefulWidget {
//   final Function(String)? onSaved;
//   final String? initialText;
//   final IconData iconData;
//   final bool option;
//   final double height;
//   final TextInputType keytype;
//   final TextEditingController? controller;
//    bool isSecure;
//    String? labelText;
//    final TextInputType textInput;
//    int? maxLength;
//    bool isDisabled = false;
//    bool isDigitsOnly;
//   bool emptyValidation;
//   InputTextwidget(
//       {Key? key,
//       this.labelText,
//       this.isDigitsOnly = false,
//       this.textInput = TextInputType.text,
//       required this.initialText,
//       this.emptyValidation = true,
//       this.iconData = Icons.abc,
//       required this.option,
//       this.height = 10.0,
//       this.keytype = TextInputType.text,
//       this.controller,
//       this.maxLength,
//       this.onSaved,

//       this.isSecure = false})
//       : super(key: key);

//   @override
//   State<InputTextwidget> createState() => _InputTextwidgetState();
// }

// class _InputTextwidgetState extends State<InputTextwidget> {
//   @override
//   Widget build(BuildContext context) {
//     if (widget.option) {
//       return Center(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Padding(
//             padding:
//                 EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
//             child: TextFormField(
//                 style: const TextStyle(fontFamily: 'Roboto'),
//               keyboardType: widget.keytype,
//               obscureText: widget.isSecure,
//               decoration: InputDecoration(
//                 border: const UnderlineInputBorder(),
//                 labelText: widget.initialText,
//                 prefixIcon: Icon(
//                   widget.iconData,
//                   color: kPrimaryColor,
//                 ),
//               ),
//               onSaved: ((newValue) {
//                 widget.controller?.text = newValue!;
//               }),
//               controller: widget.controller,
//             ),
//           ),
//         ),
//       );
//     } else {
//       return SizedBox(
//         height: widget.height,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.symmetric(
//                   vertical: SizeConfig(context).getProportionatePadding(),
//                   horizontal: 0),
//               child: TextFormField(
//                 obscureText: widget.isSecure,
//                 style: const TextStyle(fontFamily: 'Roboto'),
//                 decoration: InputDecoration(
//                   // focusColor: Colors.white,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(
//                         SizeConfig(context).getProportionateroundess(),
//                       ),
//                     ),
//                   ),
//                   hintText: widget.initialText,
//                 ),
//                 onSaved: (newValue) {
//                 widget.controller?.text = newValue!;
//                 },

//                 controller: widget.initialText == null
//                     ? widget.controller
//                     : null,
//                 //onChanged: widget.onChanged,
//               ),
//             ),
//           ],
//         ),
//       );
//     }
//   }
// }

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freelanceproject/src/utils/constants/constants/colors.dart';
import 'package:freelanceproject/src/utils/constants/constants/size_config.dart';

import 'app_utils.dart';

class InputTextwidget extends StatelessWidget {
  InputTextwidget(
      {Key? key,
      this.labelText,
      this.controller,
      required this.hintText,
      this.textInput = TextInputType.text,
      this.textAlign = TextAlign.left,
      this.isSecure = false,
      this.isDisabled = false,
      this.isDigitsOnly = false,
      this.maxLength,
      this.suffixWidget,
      this.prefixWidget,
      this.focus,
      this.validation,
      this.emptyValidation = true,
      this.nextFocus,
      this.onChange,
      this.maxLine,
      this.option = false,
      this.keytype = TextInputType.text,
      this.icondata = Icons.abc})
      : super(key: key);

  String? labelText;
  final TextEditingController? controller;
  final TextInputType textInput;
  final TextAlign textAlign;
  final String hintText;
  final TextInputType keytype;
  int? maxLength;
  bool isSecure;
  bool isDisabled = false;
  bool isDigitsOnly;
  bool emptyValidation;
  FocusNode? focus;
  Widget? suffixWidget;
  Widget? prefixWidget;
  var validation;
  var nextFocus;
  var onChange;
  int? maxLine;
  IconData icondata;
  final bool option;

  @override
  Widget build(BuildContext context) {
    if (option == true) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller,
              keyboardType: textInput,
              inputFormatters: isDigitsOnly
                  ? [
                      FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                      TextInputFormatter.withFunction((oldValue, newValue) {
                        try {
                          final text = newValue.text;
                          if (text.isNotEmpty) double.parse(text);
                          return newValue;
                        } catch (e) {
                          e.toString();
                        }
                        return oldValue;
                      }),
                    ]
                  : null,
              maxLength: maxLength,
              maxLines: maxLine,
              focusNode: focus,
              obscureText: isSecure,
              // enabled: isDisabled,
              textAlignVertical: TextAlignVertical.bottom,
              textAlign: textAlign,
              style: blackRegular16,
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: suffixWidget,
                ),
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 2),
                  child: prefixWidget,
                ),
                prefixIconConstraints: const BoxConstraints(maxHeight: 24),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.2),
                suffixIconConstraints: const BoxConstraints(maxHeight: 24),
                counterText: "",
                hintText: hintText,
                hintStyle: hintTextStyle,
                contentPadding:
                    const EdgeInsets.only(bottom: 15, top: 15, left: 15),
                isDense: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
              ),
              validator: emptyValidation
                  ? (value) {
                      if (value == null || value.isEmpty) {
                        return '$hintText Required';
                      }
                      return null;
                    }
                  : validation,
              onEditingComplete: nextFocus,
              onChanged: onChange,
            ),
          ],
        ),
      );
    } else {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding:
                EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
            child: TextFormField(
              controller: controller,
              style: const TextStyle(fontFamily: 'Roboto'),
              keyboardType: keytype,
              obscureText: isSecure,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                labelText: labelText,
                prefixIcon: Icon(
                  icondata,
                  color: kPrimaryColor,
                ),
              ),
              onEditingComplete: nextFocus,
              onChanged: onChange,
            ),
          ),
        ),
      );
    }
  }
}
