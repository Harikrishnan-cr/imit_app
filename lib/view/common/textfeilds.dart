


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imit/controller/const/text_style.dart';

class CommonTextFormFeild extends StatelessWidget{
  const CommonTextFormFeild(
      {Key? key,
      required this.mainText,
      required this.mainLabel,
      required this.textController,
      this.error,
      required this.textInputType,
      this.onChanged,
      this.obscureText})
      : super(key: key);
  final bool? obscureText;
  final String mainText;
  final String mainLabel;
  final TextInputType textInputType;
  final TextEditingController textController;
  final void Function(String)? onChanged;
  final String? error;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            mainText,
            style: logInTextStyle(),
          ),
          TextField(
              onChanged: onChanged,
              keyboardType: textInputType,
              autocorrect: true,
              obscureText: obscureText == null ? false : true,
              controller: textController,
              decoration: InputDecoration(
                  errorText: error,
                  labelText: mainLabel,
                  labelStyle: loginUserScreenSecondaryCardTextStyle())),
        ],
      ),
    );
  }
}
