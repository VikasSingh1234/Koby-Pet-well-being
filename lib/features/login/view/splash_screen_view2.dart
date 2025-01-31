// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pet_wellbeing/common/design_system/color.dart';
// import 'package:pet_wellbeing/features/login/view/login_view.dart';
//
// class SplashScreenView2 extends StatefulWidget {
//   const SplashScreenView2({super.key});
//
//   @override
//   State<SplashScreenView2> createState() => _SplashScreenView2State();
// }
//
// class _SplashScreenView2State extends State<SplashScreenView2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: InkWell(
//           onTap: (){
//             Get.to(() => const LoginPageView());
//           },
//           child: Container(
//             decoration: BoxDecoration(
//               color: buttonBackgroundColor,
//               borderRadius: BorderRadius.all(
//                 Radius.circular(20)
//               )
//             ),
//             height: 60,
//             width: double.infinity,
//             child: Center(
//               child: Text(
//                 'Continue',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                   color: buttonTextColor
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       backgroundColor: backGroundColor,
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(24.0,8,24,0),
//               child: InkWell(
//                 onTap: (){
//                   Get.close(1);
//                 },
//                 child: CircleAvatar(
//                     radius: 24,
//                     backgroundColor: Colors.grey.shade400,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 8.0),
//                       child: Icon(
//                         Icons.arrow_back_ios,
//                         color: Colors.white,
//                       ),
//                     )
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(24.0,10,24,200),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             'assets/icons/child_play_with_dog.png',
//                             height: 160,
//                           ),
//                           Flexible(
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "Get Ai powered personalized daily schedule",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.w600,
//                                     color: headingColor,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 10,),
//                     Container(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             'assets/icons/dog_with_stethoscope.png',
//                             height: 160,
//                           ),
//                           Flexible(
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "Reminders about vaccination & site visits",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.w600,
//                                     color: headingColor,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 10,),
//                     Container(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Image.asset(
//                             'assets/icons/dog_with_computer.png',
//                             height: 110,
//                           ),
//                           Flexible(
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "Tips & Best practices personalized daily schedule",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.w600,
//                                     color: headingColor,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_wellbeing/common/design_system/color.dart';
import 'package:pet_wellbeing/common/design_system/font_size.dart';
import 'package:pet_wellbeing/features/login/view/login_view.dart';

class SplashScreenView2 extends StatefulWidget {
  const SplashScreenView2({super.key});

  @override
  State<SplashScreenView2> createState() => _SplashScreenView2State();
}

class _SplashScreenView2State extends State<SplashScreenView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: GestureDetector(
          onTap: () {
            Get.to(() => const LoginPageView());
          },
          child: Container(
            decoration: BoxDecoration(
                color: buttonBackgroundColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(20)
                )
            ),
            height: 60,
            width: double.infinity,
            child: Center(
              child: Text(
                'Continue',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: buttonTextSize,
                    fontWeight: FontWeight.w400,
                    color: buttonTextColor
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              InkWell(
                onTap: () {
                  Get.close(1);
                },
                borderRadius: BorderRadius.circular(24),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black87,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Features List
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildFeatureCard(
                        imagePath: 'assets/icons/child_play_with_dog.png',
                        text: "Get AI-powered personalized daily schedules",
                      ),
                      _buildFeatureCard(
                        imagePath: 'assets/icons/dog_with_stethoscope.png',
                        text: "Reminders about vaccinations & vet visits",
                      ),
                      _buildFeatureCard(
                        imagePath: 'assets/icons/dog_with_computer.png',
                        text: "Tips & best practices for pet well-being",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard({required String imagePath, required String text}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 120,
            width: 120,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: headingColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}