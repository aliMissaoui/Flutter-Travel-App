import 'package:flutter/material.dart';
import 'package:trip/screens/home_page.dart';
import 'package:trip/style/colors.dart';
import 'package:trip/style/style.dart';
import 'package:trip/style/text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/welcome-image.png',
            ),
            const SizedBox(
              height: 60.0,
            ),
            Text(
              welcomeTitle,
              style: titleStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                bottom: 40.0,
                left: 30.0,
                right: 30.0,
              ),
              child: Text(
                welcomeDescription,
                style: descriptionStyle,
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
                  return const HomePage();
                }));
              },
              style: startBtnStyle,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 40.0,
                ),
                child: Text(
                  start,
                  style: startBtnTextStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
