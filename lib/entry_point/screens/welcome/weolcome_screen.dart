import 'package:mealify_consumer/constants/colors.dart';
import 'package:mealify_consumer/constants/image_strings.dart';
import 'package:mealify_consumer/constants/sizes.dart';
import 'package:mealify_consumer/constants/text_strings.dart';
import 'package:mealify_consumer/retailer/screens/login/login_screen.dart';
import 'package:mealify_consumer/retailer/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? mySecondaryColor : Colors.white,
      body: Container(
        padding: const EdgeInsets.all(myDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Consumer Side",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0)),
            Image(
                image: const AssetImage(welcomeScreenImage), height: height * 0.6),
            Column(
              children: [
                Text(myWelcomeTitle,
                    style: Theme.of(context).textTheme.headline3),
                Text(myWelcomeSubTitle,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: Text(myLogin.toUpperCase()),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: Text(mySignup.toUpperCase()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
