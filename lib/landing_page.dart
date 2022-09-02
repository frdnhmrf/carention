import 'package:flutter/material.dart';
import 'package:projectflutterpemula/home_page.dart';
import 'package:projectflutterpemula/shared_theme.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 566,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_car.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Premium cars.\nEnjoy the luxury",
                  style: whiteTextStyle.copyWith(
                    fontSize: 35,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Premium and prestige car daily rental.\nExperience the thrill at a lower price',
                  style: greyTextStyle.copyWith(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 43),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(130),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                          (route) => false);
                    },
                    child: Text(
                      "Let's Go",
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
