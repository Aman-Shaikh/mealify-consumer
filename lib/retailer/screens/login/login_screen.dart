
import 'package:mealify_consumer/constants/sizes.dart';
import 'package:mealify_consumer/retailer/screens/login/login_footer_widget.dart';
import 'package:mealify_consumer/retailer/screens/login/login_form_widget.dart';
import 'package:mealify_consumer/retailer/screens/login/login_header_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(myDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                LoginHeaderWidget(),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}