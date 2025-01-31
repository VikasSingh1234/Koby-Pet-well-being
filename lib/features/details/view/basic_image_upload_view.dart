// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pet_wellbeing/features/details/view/image_analysing_view.dart';
// import 'package:pet_wellbeing/features/details/view/skip_basic_image_view.dart';
// import '../../../common/design_system/color.dart';
//
// class BasicImageUploadView extends StatefulWidget {
//   String? name;
//   String? gender;
//   BasicImageUploadView({super.key,this.name,this.gender});
//
//   @override
//   State<BasicImageUploadView> createState() => _BasicImageUploadViewState();
// }
//
// class _BasicImageUploadViewState extends State<BasicImageUploadView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: backGroundColor,
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: InkWell(
//           onTap: (){
//             Get.to(() => ImageAnalysisView(name: widget.name));
//           },
//           child: Container(
//             decoration: BoxDecoration(
//                 color: buttonBackgroundColor,
//                 borderRadius: BorderRadius.all(
//                     Radius.circular(32)
//                 )
//             ),
//             height: 60,
//             width: double.infinity,
//             child: Center(
//               child: Text(
//                 'Next',
//                 style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                     color: buttonTextColor
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(24,0,24,24),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: InkWell(
//                   onTap: (){
//                     // Skip this page
//                     Get.to(() => SkipBasicDetailsView(name: widget.name,));
//                   },
//                   child: Text(
//                     "Skip",
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                       decoration: TextDecoration.underline
//                     ),
//                   ),
//                 ),
//               ),
//               Text(
//                 '${widget.name??""} is a lovely name!',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 32,
//                     fontWeight: FontWeight.w600,
//                     color: headingColor
//                 ),
//               ),
//               SizedBox(height: 32,),
//               Text(
//                 "Can you upload a few photos of ${widget.name}?",
//                 style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 24,
//                     fontWeight: FontWeight.w600,
//                     color: headingColor
//                 ),
//               ),
//               SizedBox(height: 12,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     height: 120,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       border: Border.all(
//                         width: 2,
//                         color: Colors.grey.shade400
//                       )
//                     ),
//                     width: MediaQuery.sizeOf(context).width/3,
//                     child: Icon(
//                         Icons.add,
//                       size: 40,
//                       color: Colors.grey.shade400,
//                     ),
//
//                   ),
//                   Container(
//                     height: 120,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                         border: Border.all(
//                             width: 2,
//                             color: Colors.grey.shade400
//                         )
//                     ),
//                     width: MediaQuery.sizeOf(context).width/3,
//                     child: Icon(
//                       Icons.add,
//                       size: 40,
//                       color: Colors.grey.shade400,
//                     ),
//
//                   ),
//                 ],
//               ),
//               SizedBox(height: 24,),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 120,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                         border: Border.all(
//                             width: 2,
//                             color: Colors.grey.shade400
//                         )
//                     ),
//                     width: MediaQuery.sizeOf(context).width/3,
//                     child: Icon(
//                       Icons.add,
//                       size: 40,
//                       color: Colors.grey.shade400,
//                     ),
//
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 24,
//               ),
//               Tooltip(
//                 message: "We analyse your fur baby's photo to analyse their health and identify any medical"
//                     " conditions to give you tailored-made recommendations to ensure their healthy life.",
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(4)),
//                   border: Border.all(
//                     width: 1,
//                     color: buttonTextColor.withOpacity(0.5),
//                   ),
//                 ),
//                 margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
//                 textStyle: TextStyle(
//                   color: Colors.black54,
//                   fontSize: 15,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w300,
//                 ),
//                 preferBelow: true,
//                 verticalOffset: 20,
//                 child: Text(
//                   "Why do we need photos?",
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.black54,
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               )
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_wellbeing/common/design_system/font_size.dart';
import 'package:pet_wellbeing/features/details/view/image_analysing_view.dart';
import 'package:pet_wellbeing/features/details/view/skip_basic_image_view.dart';
import '../../../common/design_system/color.dart';

class BasicImageUploadView extends StatefulWidget {
  String? name;
  String? gender;
  BasicImageUploadView({super.key, this.name, this.gender});

  @override
  State<BasicImageUploadView> createState() => _BasicImageUploadViewState();
}

class _BasicImageUploadViewState extends State<BasicImageUploadView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backGroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(24.0),
        child: InkWell(
          onTap: () {
            Get.to(() => ImageAnalysisView(name: widget.name));
          },
          child: Container(
            decoration: BoxDecoration(
              color: buttonBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 60,
            width: double.infinity,
            child: Center(
              child: Text(
                'Next',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: buttonTextSize,
                  fontWeight: FontWeight.w400,
                  color: buttonTextColor,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Get.to(() => SkipBasicDetailsView(name: widget.name));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  '${widget.name ?? ""} is a lovely name!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: headingTextSize,
                    fontWeight: FontWeight.w600,
                    color: headingColor,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Upload a photo of ${widget.name}",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: subHeadingTextSize,
                  fontWeight: FontWeight.w600,
                  color: headingColor,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Add image picker logic here
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.7,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    child: Icon(
                      Icons.add_a_photo,
                      size: 50,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Center(
                child: InkWell(
                  onTap: () => showDisclaimerBottomSheet(context),
                  child: Text(
                    "Why do we need a photo?",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: buttonTextSize,
                      fontWeight: FontWeight.w600,
                      color:headingColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void showDisclaimerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.info_outline, size: 40, color: buttonBackgroundColor),
              SizedBox(height: 16),
              Text(
                "Why do we need a photo?",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "We analyze your fur baby's photo to assess their health and identify potential medical conditions. "
                    "This helps us provide personalized recommendations for a healthy life.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () => Get.back(),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  child: Text(
                    "Got it!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}