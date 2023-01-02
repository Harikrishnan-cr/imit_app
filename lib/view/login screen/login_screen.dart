import 'package:flutter/material.dart';
import 'package:imit/view/common/button/common_button.dart';
import 'package:imit/view/common/textfeilds.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passWordController = TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonTextFormFeild(
              mainText: 'sample',
              mainLabel: 'sampe',
              textController: emailController,
              textInputType: TextInputType.emailAddress),
          CommonTextFormFeild(
              mainText: 'sample',
              mainLabel: 'sampe',
              textController: emailController,
              obscureText: true, 
              textInputType: TextInputType.visiblePassword),

              CommonButtobMain(height: 40) 
        ],
      ),
    );
  }
}
