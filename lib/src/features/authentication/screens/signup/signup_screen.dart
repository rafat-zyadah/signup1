// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_learn/src/common_widget/form/form_header_widget.dart';
import 'package:login_learn/src/constants/image_strings.dart';
import 'package:login_learn/src/constants/siszes.dart';
import 'package:login_learn/src/constants/text_strings.dart';
import 'package:login_learn/src/features/authentication/screens/login/login_screen.dart';
import 'widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(
                    image: tWelcomeScreenImage,
                    title: tSignUpTitle,
                    subTitle: tSignUpSubTitle),
                /*                               */
                SignUpFormWidget(),
                Column(
                  children: [
                    Text("OR"),
                    SizedBox(height: tFormHeight - 20),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20,
                        ),
                        label: Text(tSignInWithGoogle.toUpperCase()),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Get.to(() => LoginScreen());
                        // Get.to(() => LoginScreen());
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: tAlreadyHaveAnAccount,
                                style: Theme.of(context).textTheme.bodyLarge),
                            TextSpan(text: tLogin.toUpperCase())
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
