


import 'package:flutter/cupertino.dart';
import 'package:imit/controller/colors/const_colours.dart';
import 'package:imit/controller/const/text_style.dart';

class CommonButtobMain extends StatelessWidget {
  const CommonButtobMain(
      {Key? key, required this.height, this.titleText, this.colours})
      : super(key: key);

  final double height;
  final Color? colours;
  final String? titleText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
            color: colours ?? greenColour,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          titleText ?? 'SIGN IN',
          style: commonButtonStyle(), 
        )),
      ),
    );
  }
}