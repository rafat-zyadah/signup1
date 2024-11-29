// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_learn/src/features/authentication/screens/signup/signup_screen.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/siszes.dart';
import '../../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('OR'),
        SizedBox(height: tFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: Image(image: AssetImage(tGoogleLogoImage), width: 20.0),
            label: Text(tSignInWithGoogle),
          ),
        ),
        SizedBox(height: tFormHeight - 20),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              Get.to(() => SignupScreen());
            },
            child: Text.rich(TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: [
                  TextSpan(
                      text: tSignup.toUpperCase(),
                      style: TextStyle(color: Colors.blue))
                ])))
      ],
    );
  }
}
