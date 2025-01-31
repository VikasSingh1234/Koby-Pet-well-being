import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/design_system/color.dart';
class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: buttonTextColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFFF7F9F2),
                    Colors.white
                  ],
                  stops: [0.1,1]
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.0,20,24,24),
              child: Column(
                children: [
                  //heading part
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: buttonBackgroundColor,
                        radius: 25,
                        child: Image.asset(
                          "assets/home/dog_avatar.png",
                        ),
                      ),
                      SizedBox(width: 12,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Poppins",
                                color: Colors.grey,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(
                            "Bruno",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 12,),
                  Divider(
                    color: Colors.grey.shade400,
                  ),

                  SizedBox(height: 12,),

                  // profile part
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: buttonBackgroundColor,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 1,
                            color: Colors.white
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/home/dog_avatar.png',
                            height: 70,
                            width: 70,
                          ),
                          const SizedBox(width: 24,),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bruno",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: buttonTextColor,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "2 Years Old Big Boy",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: buttonTextColor,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: width-80,
                    height: 8,
                    decoration: BoxDecoration(
                        color: buttonBackgroundColor.withOpacity(0.5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        ),
                    ),
                  ),
                  Container(
                    width: width-100,
                    height: 8,
                    decoration: BoxDecoration(
                      color: buttonBackgroundColor.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(height: 4,),

                  //indicators
                  new DotsIndicator(
                    dotsCount: 3,
                    position: 0,
                    decorator: DotsDecorator(
                      size: const Size.square(6.0),
                      activeSize: const Size(16.0, 6.0),
                      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      color: Colors.grey, // Inactive color
                      activeColor: buttonBackgroundColor,
                    ),
                  ),

                  SizedBox(height: 12,),
                  Container(
                    decoration: BoxDecoration(
                      color: backGroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey.shade300
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/home/ask.svg',
                            height: 60,
                            width: 60,
                          ),
                          SizedBox(width: 12,),
                          Text(
                            "Ask a question",
                            style: TextStyle(
                              fontSize: 24,
                              color: buttonBackgroundColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Shadow color with opacity
                            blurRadius: 5, // Softness of the shadow
                            spreadRadius: 1, // How much the shadow spreads
                            offset: Offset(2, 4), // Moves shadow to the right & bottom
                          ),
                        ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey.shade300
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12,16,16,16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                'assets/home/clock.svg',
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(width: 12,),
                              Flexible(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "8 PM",
                                      style: TextStyle(
                                        fontSize: 18,
                                        //color: buttonTextColor,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Dinner Time",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black87,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(width: 12),
                                        Icon(Icons.emoji_food_beverage_outlined)
                                      ],
                                    ),
                                    Text(
                                      "200 grams high protein meal",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 8,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 82,
                                child: Text(
                                  "9 PM",
                                  style: TextStyle(
                                    fontSize: 18,
                                    //color: buttonTextColor,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Playtime",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                    Text(
                                      "Play a shell game or tug of war.",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 82,
                                child: Text(
                                  "10 PM",
                                  style: TextStyle(
                                    fontSize: 18,
                                    //color: buttonTextColor,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bed Time",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),

                                    Text(
                                      "Time of bed and recharged",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2), // Shadow color with opacity
                            blurRadius: 5, // Softness of the shadow
                            spreadRadius: 1, // How much the shadow spreads
                            offset: Offset(2, 4), // Moves shadow to the right & bottom
                          ),
                        ],
                      image: DecorationImage(
                        image: AssetImage('assets/home/tips_dog.jpeg'), // Your background image
                        fit: BoxFit.cover, // Cover entire container
                        colorFilter: ColorFilter.mode(
                          buttonBackgroundColor, // Adjust opacity (0.0 to 1.0)
                          BlendMode.color, // Darkens the image for better readability
                        ),
                      ),
                      color: buttonBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey.shade300
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/home/tips.svg',
                            height: 70,
                            width: 70,
                            color: Colors.white,
                          ),
                          SizedBox(width: 12,),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tip of the day',
                                  style: TextStyle(
                                    fontSize: 18,
                                    //color: buttonTextColor,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Labradors are prone to weight gain due to their love of food. Feed them controlled portions of high-quality food, avoid extra treats, and ensure daily exercise to maintain a healthy weight and prevent obesity.',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}