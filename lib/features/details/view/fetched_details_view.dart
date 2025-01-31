// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pet_wellbeing/common/design_system/color.dart';
// import 'package:pet_wellbeing/features/details/view/not_really_correct_view.dart';
//
// import '../../home/view/home.dart';
//
// class FetchedDetailsView extends StatefulWidget {
//   String? name;
//   FetchedDetailsView({super.key,this.name});
//
//   @override
//   State<FetchedDetailsView> createState() => _FetchedDetailsViewState();
// }
//
// class _FetchedDetailsViewState extends State<FetchedDetailsView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backGroundColor,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                   child: CircleAvatar(
//                     backgroundColor: Colors.orangeAccent.shade100,
//                     radius: 100,
//                     child: ClipOval(
//                       child: Image.asset(
//                         'assets/icons/dog_using_magnifying_glass.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   )
//               ),
//               SizedBox(height: 24,),
//               Text(
//                 'It  looks like ${widget.name??""} is a 3 year old German Shepherd and weight around 20 kgs',
//                 style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 32,
//                     fontWeight: FontWeight.w600,
//                     color: buttonTextColor
//                 ),
//               ),
//               Spacer(),
//               InkWell(
//                 onTap: (){
//                   Get.to(() => const HomeView());
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: buttonBackgroundColor,
//                       borderRadius: BorderRadius.all(
//                           Radius.circular(32)
//                       )
//                   ),
//                   height: 60,
//                   width: double.infinity,
//                   child: Center(
//                     child: Text(
//                       "That's Correct",
//                       style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 20,
//                           fontWeight: FontWeight.w500,
//                           color: buttonTextColor
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 12,),
//               Center(
//                 child: InkWell(
//                   onTap: (){
//                     Get.to(() => NotReallyCorrectView(name: widget.name,));
//                   },
//                   child: Text(
//                     "Not really",
//                     style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: buttonTextColor,
//                       decoration: TextDecoration.underline
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_wellbeing/common/design_system/color.dart';
import 'package:pet_wellbeing/common/design_system/font_size.dart';
import 'package:pet_wellbeing/features/details/view/not_really_correct_view.dart';
import '../../home/view/home.dart';

class FetchedDetailsView extends StatefulWidget {
  String? name;
  FetchedDetailsView({super.key, this.name});

  @override
  State<FetchedDetailsView> createState() => _FetchedDetailsViewState();
}

class _FetchedDetailsViewState extends State<FetchedDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            padding: EdgeInsets.all(24), // Padding around the content
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the container
              borderRadius: BorderRadius.circular(16), // Rounded corners for the container
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Stack for the CircleAvatar and fading rings
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // First fading ring
                    AnimatedOpacity(
                      opacity: 0.3,
                      duration: Duration(seconds: 2),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade200
                          ),
                        ),
                      ),
                    ),
                    // Second fading ring
                    AnimatedOpacity(
                      opacity: 0.4,
                      duration: Duration(seconds: 3),
                      child: Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color: Colors.grey.shade600
                          ),
                        ),
                      ),
                    ),
                    // Third fading ring
                    AnimatedOpacity(
                      opacity: 0.5,
                      duration: Duration(seconds: 4),
                      child: Container(
                        width: 240,
                        height: 240,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color:  Colors.grey.shade400
                          ),
                        ),
                      ),
                    ),
                    // Fourth fading ring
                    AnimatedOpacity(
                      opacity: 0.6,
                      duration: Duration(seconds: 5),
                      child: Container(
                        width: 260,
                        height: 260,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            color:  Colors.grey.shade300
                          ),
                        ),
                      ),
                    ),
                    // CircleAvatar in the center
                    CircleAvatar(
                      backgroundColor: buttonBackgroundColor,
                      radius: 100,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/icons/dog_using_magnifying_glass.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                // Text description inside the container
                Text.rich(
                  TextSpan(
                    text: 'It looks like ',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: subHeadingTextSize,
                      fontWeight: FontWeight.w600,
                      color: headingColor,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: '${widget.name ?? ""}',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                          fontSize: subHeadingTextSize+4
                        ),
                      ),
                      TextSpan(
                        text: ' is a ',
                      ),
                      TextSpan(
                        text: '3',  // Highlight age
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.purple,
                          fontSize: buttonTextSize+4
                        ),
                      ),
                      TextSpan(
                        text: '-year-old ',
                      ),
                      TextSpan(
                        text: 'German Shepherd', // Highlight breed
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                          fontSize: buttonTextSize+4
                        ),
                      ),
                      TextSpan(
                        text: ' and weighs around ',
                      ),
                      TextSpan(
                        text: '20 kg', // Highlight weight
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: buttonTextSize+4
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 40), // Space after description text

                Spacer(),
                InkWell(
                    onTap: () {
                      Get.to(() => const HomeView());
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
                          "That's Correct",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: buttonTextSize,
                              fontWeight: FontWeight.w400,
                              color: buttonTextColor
                          ),
                        ),
                      ),
                    )
                ),
                SizedBox(height: 12),

                // "Not really" text with underline and improved styling
                Center(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => NotReallyCorrectView(name: widget.name));
                    },
                    child: Text(
                      "Not really",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: buttonTextSize-2,
                        fontWeight: FontWeight.w500,
                        color: headingColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}