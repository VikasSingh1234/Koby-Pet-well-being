import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_wellbeing/common/design_system/color.dart';
import 'package:pet_wellbeing/features/login/view/splash_screen_view2.dart';

import '../../../common/design_system/font_size.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/icons/dogs_play.jpeg',
            ),
            Transform.translate(
              offset: Offset(0,-50),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: backGroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Introducing Koby",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            color: headingColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          "Your pet parenting companion",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            color: headingColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Full-width Button
                        InkWell(
                          onTap: () {
                            Get.to(() => const SplashScreenView2());
                          },
                          child: Container(
                            width: 350,
                            decoration: const BoxDecoration(
                              color: buttonBackgroundColor,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Get Started",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: buttonTextSize,
                                    color: buttonTextColor,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 40),
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: buttonTextColor,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 70),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
