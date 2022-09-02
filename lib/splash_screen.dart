import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projectflutterpemula/landing_page.dart';
import 'package:projectflutterpemula/shared_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LandingPage()),
          (route) => false);
    });
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_logo.png',
              width: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Carention',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
