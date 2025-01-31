import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_wellbeing/common/design_system/color.dart';
import 'package:pet_wellbeing/common/design_system/font_size.dart';

import 'basic_image_upload_view.dart';

class BasicDetailsView extends StatefulWidget {
  const BasicDetailsView({super.key});

  @override
  State<BasicDetailsView> createState() => _BasicDetailsViewState();
}

class _BasicDetailsViewState extends State<BasicDetailsView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backGroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(24.0),
        child: InkWell(
          onTap: (){
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
              Get.to(() => BasicImageUploadView(
                name: _nameController.text.toString(),
                gender: gender,
              ));
            }
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
                'Next',
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
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Answer Few Questions Before Begin',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: headingTextSize,
                      fontWeight: FontWeight.w600,
                      color: headingColor
                  ),
                ),
                SizedBox(height: 48,),
                Text(
                  "What's your Fur Baby's name",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: subHeadingTextSize,
                      fontWeight: FontWeight.w600,
                      color: headingColor
                  ),
                ),
                SizedBox(height: 12,),
                TextFormField(
                  controller: _nameController,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: buttonTextSize,
                    color: Colors.black,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter name";
                    }
                    return null;
                  },
                  cursorColor: Colors.black,
                  onChanged: (_) {
                    if (_formKey.currentState != null) {
                      _formKey.currentState!.validate();
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: buttonTextSize),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 1.5, color: Colors.grey.shade400),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 1.5, color: Colors.grey.shade400),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 2, color: buttonBackgroundColor),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 1.5, color: Colors.redAccent),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 2, color: Colors.redAccent),
                    ),
                    errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 14,
                    ),
                  ),
                ),

                SizedBox(height: 24,),
                Text(
                  "Gender",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: subHeadingTextSize,
                      fontWeight: FontWeight.w600,
                      color: headingColor
                  ),
                ),
                SizedBox(height: 12,),
                Row(
                  children: [
                    Expanded(child: CustomRadioButton("Male", "Male")),
                    SizedBox(width: 24),
                    Expanded(child: CustomRadioButton("Female", "Female")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CustomRadioButton(String text, String value) {
    return InkWell(
      onTap: (){
        setState(() {
          gender = value;
        });
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: gender==value?buttonBackgroundColor : Colors.grey.shade300,
          borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: "Poppins",
                color: gender==value?Colors.white:buttonTextColor,
                fontSize: buttonTextSize
              ),
            ),
          ),
        ),
      ),
    );
  }
}