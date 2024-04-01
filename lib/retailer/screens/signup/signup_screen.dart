
import 'package:mealify_consumer/constants/image_strings.dart';
import 'package:mealify_consumer/constants/sizes.dart';
import 'package:mealify_consumer/constants/text_strings.dart';
import 'package:mealify_consumer/retailer/screens/signup/form_header_widget.dart';
import 'package:mealify_consumer/retailer/screens/signup/signup_footer_widget.dart';
import 'package:mealify_consumer/retailer/screens/signup/signup_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(myDefaultSize),
            child: Column(
              children: const [
                FormHeaderWidget(
                  image: welcomeScreenImageWithPhone,
                  title: mySignUpTitle,
                  subTitle: mySignUpSubTitle,
                  imageHeight: 0.15,
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}