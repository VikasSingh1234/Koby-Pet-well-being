import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pet_wellbeing/common/design_system/color.dart';
import 'package:pet_wellbeing/common/design_system/font_size.dart';
import 'package:pet_wellbeing/features/details/view/basic_details_view.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0,8,24,24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Get.close(1);
                },
                child: CircleAvatar(
                  radius: 24,
                    backgroundColor: Colors.grey.shade400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                          Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    )
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'SignUp',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  color: headingColor
                ),
              ),
              Text(
                'to help your pet live a healthy and happy life',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _emailController,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: buttonTextSize,
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please Enter Name";
                  }
                  return null;
                },
                cursorHeight: 24, // Set the desired cursor height
                cursorColor: Colors.black,
                onChanged: (_){
                  if (_formKey.currentState != null) {
                    _formKey.currentState!.validate();
                  }
                },
                decoration: InputDecoration(
                  //labelText: 'Enter your name',
                  labelStyle: TextStyle(
                      color: buttonTextColor
                  ),
                  errorStyle: TextStyle(
                      color: buttonTextColor
                  ),
                  hintText: "Your email",
                  hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: buttonTextSize,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade100
                    )
                  ),
                ),
              ),
              SizedBox(height: 16,),
              TextFormField(
                controller: _passwordController,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: buttonTextSize,
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Please Enter Name";
                  }
                  return null;
                },
                autofocus: false,
                cursorHeight: 24, // Set the desired cursor height
                cursorColor: Colors.black,
                onChanged: (_){
                  if (_formKey.currentState != null) {
                    _formKey.currentState!.validate();
                  }
                },
                decoration: InputDecoration(
                  //labelText: 'Enter your name',
                  labelStyle: TextStyle(
                      color: buttonTextColor
                  ),
                  errorStyle: TextStyle(
                      color: buttonTextColor
                  ),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: buttonTextSize,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
              SizedBox(height: 16,),
              InkWell(
                onTap: (){
                  //Get.to(() => const LoginPageView());
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
                      'Submit',
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
              SizedBox(height: 12,),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(height: 1, color: Colors.black26),
                  ),
                  const Text(
                    "  Or  ",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Expanded(
                    child: Container(height: 1, color: Colors.black26),
                  )
                ],
              ),
              Spacer(),
              SizedBox(
                height: 12,
              ),

              Padding(
                padding: const EdgeInsets.symmetric( vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                      backgroundColor: buttonBackgroundColor, // Background color
                      padding: EdgeInsets.symmetric(horizontal:24,vertical: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      )
                  ),
                  onPressed: () {
                    signInWithGoogle();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: SvgPicture.asset(
                            'assets/icons/google.svg',
                            height: 35,
                          )
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "Continue with Google",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: buttonTextSize,
                          color: buttonTextColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric( vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                      backgroundColor: buttonBackgroundColor,// Background color
                      padding: EdgeInsets.symmetric(horizontal:24,vertical: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      )
                  ),
                  onPressed: () {
                    signInWithGoogle();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: SvgPicture.asset(
                            'assets/icons/apple.svg',
                            height: 35,
                            color: Colors.white,
                          )
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        "Continue with Apple",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: buttonTextSize,
                          color: buttonTextColor
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 12,
              ),

              InkWell(
                onTap: (){
                  Get.to(() => const BasicDetailsView());
                },
                child: RichText(
                  text: TextSpan(
                      text: "By Continuing, you agree with Krava's",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black, fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(text: ' terms & condition',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: buttonBackgroundColor, fontSize: 12),
                        ),
                        TextSpan(text: ' and',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black, fontSize: 12),
                        ),
                        TextSpan(text: ' privacy policy.',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: buttonBackgroundColor, fontSize: 12),
                        )

                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  signInWithGoogle() {
    print("sign in with google clicked");
  }

  signInWithApple() {
    print("sign in with apple clicked");
  }
}
