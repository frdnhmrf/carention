import 'package:flutter/material.dart';
import 'package:projectflutterpemula/home_page.dart';
import 'package:projectflutterpemula/shared_theme.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenSize.height * 0.6,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image_car.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Premium cars.\nEnjoy the luxury",
                  style: whiteTextStyle.copyWith(
                    fontSize: screenSize.width * 0.08,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),
                Text(
                  'Premium and prestige car daily rental.\nExperience the thrill at a lower price',
                  style: greyTextStyle.copyWith(
                    fontSize: screenSize.width * 0.04,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.05),
                SizedBox(
                  width: double.infinity,
                  height: screenSize.height * 0.06,
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
                        fontSize: screenSize.width * 0.05,
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
