// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pet_wellbeing/common/design_system/color.dart';
//
// import 'fetched_details_view.darrt.dart';
//
// class ImageAnalysisView extends StatefulWidget {
//   String? name;
//   ImageAnalysisView({super.key,this.name});
//
//   @override
//   State<ImageAnalysisView> createState() => _ImageAnalysisViewState();
// }
//
// class _ImageAnalysisViewState extends State<ImageAnalysisView> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     Future.delayed(Duration(seconds: 5),(){
//       Get.to(() => FetchedDetailsView(name: widget.name,));
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backGroundColor,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             children: [
//               Image.asset(
//                 'assets/icons/dog_using_magnifying_glass.png',
//                 height: MediaQuery.sizeOf(context).height/2,
//                 width: MediaQuery.sizeOf(context).width - 48,
//               ),
//               Text(
//                 'Analysing ${widget.name} photos',
//                 style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 32,
//                     fontWeight: FontWeight.w500,
//                     color: buttonTextColor
//                 ),
//               ),
//               SizedBox(height: 40,),
//               LinearProgressIndicator(
//                 minHeight: 20,
//                 color: buttonTextColor,
//                 backgroundColor: buttonTextColor.withOpacity(0.5),
//                 borderRadius: BorderRadius.all(Radius.circular(12)),
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
import 'fetched_details_view.dart';

class ImageAnalysisView extends StatefulWidget {
  final String? name;
  ImageAnalysisView({super.key, this.name});

  @override
  State<ImageAnalysisView> createState() => _ImageAnalysisViewState();
}

class _ImageAnalysisViewState extends State<ImageAnalysisView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    //Navigate after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      Get.to(() => FetchedDetailsView(name: widget.name));
    });

    // Initialize Animation
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..forward();

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: _fadeAnimation,
                child: Image.asset(
                  'assets/icons/dog_using_magnifying_glass.png',
                  height: MediaQuery.sizeOf(context).height * 0.35,
                  width: MediaQuery.sizeOf(context).width - 48,
                ),
              ),
              SizedBox(height: 30),

              FadeTransition(
                opacity: _fadeAnimation,
                child: Text(
                  'Analyzing ${widget.name}’s Photos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: buttonTextColor,
                  ),
                ),
              ),

              SizedBox(height: 16),

              Text(
                "Please wait while we analyze ${widget.name}’s health insights...",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade700,
                ),
              ),

              SizedBox(height: 40),

              // Animated Progress Bar
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: buttonTextColor.withOpacity(0.1), // Soft background for subtle effect
                ),
                child: Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 6, // Thicker stroke for a more prominent effect
                    valueColor: AlwaysStoppedAnimation<Color>(buttonBackgroundColor), // Active color
                    backgroundColor: buttonTextColor.withOpacity(0.2), // Soft contrast color for background
                    value: null, // Infinite loop, no value to track progress
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Almost done...",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
