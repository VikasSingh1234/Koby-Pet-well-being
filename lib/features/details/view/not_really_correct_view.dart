import 'package:flutter/material.dart';
import 'package:pet_wellbeing/common/design_system/color.dart';
import 'package:intl/intl.dart';

import '../../../common/design_system/font_size.dart';

class NotReallyCorrectView extends StatefulWidget {
  String? name;
  NotReallyCorrectView({super.key,this.name});

  @override
  State<NotReallyCorrectView> createState() => _NotReallyCorrectViewState();
}

class _NotReallyCorrectViewState extends State<NotReallyCorrectView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _weightController = TextEditingController();
  String selectedDate = "";
  String gender = "Male";
  String? selectedBreed;
  double? selectedWeight; // Default selected weight

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(24.0),
        child: InkWell(
          onTap: (){
            //Get.to(() => const HomeView());
          },
          child: Container(
            decoration: BoxDecoration(
                color: buttonBackgroundColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(32)
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
                    fontWeight: FontWeight.w500,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: "We'are sorry to hear to that can you tell us a few things about ",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: headingTextSize),
                    children: <TextSpan>[
                      TextSpan(text: '${widget.name} ',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: buttonBackgroundColor,
                            fontSize: headingTextSize,
                        ),
                      ),
                      TextSpan(text: 'then?',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black, fontSize: headingTextSize,
                        ),
                      ),
                    ]
                ),
              ),
              SizedBox(height: 16,),
              Text(
                'When was Bruno born?',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: subHeadingTextSize,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),
              ),

              InkWell(
                onTap: (){
                  selectDate();
                },
                child: Row(
                  children: [
                    Text(
                      selectedDate!=""?selectedDate:"DD/MM/YYYY",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: subHeadingTextSize,
                          fontWeight: FontWeight.w600,
                          color: buttonBackgroundColor
                      ),
                    ),
                    SizedBox(width: 12,),
                    Icon(
                      Icons.edit,
                      size: subHeadingTextSize,
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
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
              SizedBox(height: 24,),
              Text(
                "Breed",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: subHeadingTextSize,
                    fontWeight: FontWeight.w600,
                    color: headingColor
                ),
              ),
              InkWell(
                onTap: (){
                  _showBreedSelectionSheet();
                },
                child: Row(
                  children: [
                    Text(
                      selectedBreed!=null?selectedBreed.toString():"Select Breed",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: subHeadingTextSize,
                          fontWeight: FontWeight.w600,
                          color: buttonBackgroundColor
                      ),
                    ),
                    SizedBox(width: 12,),
                    Icon(
                      Icons.edit,
                      size: subHeadingTextSize,
                    )
                  ],
                ),
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Bruno's weighs ",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  ),
                  const Text(
                    "in Kgs.",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  _showWeightPickerSheet();
                },
                child: Row(
                  children: [
                    Text(
                      selectedWeight!=null?selectedWeight.toString():"Select Weight",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: subHeadingTextSize,
                          fontWeight: FontWeight.w600,
                          color: buttonBackgroundColor
                      ),
                    ),
                    SizedBox(width: 12,),
                    Icon(
                      Icons.edit,
                      size: subHeadingTextSize,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> selectDate() async {
    DateTime? _selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
      helpText: "SELECT BIRTHDATE",
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: buttonTextColor, // Header background color
                onPrimary: Colors.white, // Header text color
                onSurface: Colors.black, // Body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: buttonTextColor, // Button text color
                ),
              ),
              dialogBackgroundColor: Colors.white, // Background color of the dialog
              dialogTheme: DialogTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32), // Dialog border
                ),
              )
          ),
          child: child!,
        );
      },
    );

    if(_selectedDate!=null){
      String formattedDate = DateFormat('dd/MM/yyyy').format(_selectedDate);
      selectedDate = formattedDate;
      setState(() {

      });
    }
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

  void _showBreedSelectionSheet() {
    List<String> dogBreeds = [
      "Labrador Retriever",
      "German Shepherd",
      "Golden Retriever",
      "French Bulldog",
      "Bulldog",
      "Poodle",
      "Beagle",
      "Rottweiler",
      "Yorkshire Terrier",
      "Dachshund",
    ];

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: ListView.separated(
            itemCount: dogBreeds.length,
            separatorBuilder: (context, index) => Divider(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  dogBreeds[index],
                  style: TextStyle(fontFamily: "Poppins", fontSize: 16),
                ),
                onTap: () {
                  setState(() {
                    selectedBreed = dogBreeds[index];
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  void _showWeightPickerSheet() {
    List<double> weights = List.generate(100, (index) => index + 1.0); // 1kg to 100kg


    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Wrap(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Adjust height as needed
                  child: Column(
                    children: [
                      // Title
                      Text(
                        "Select Weight",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                      ),
                      SizedBox(height: 16),

                      // Horizontal Scroll Picker
                      SizedBox(
                        height: 80,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: weights.length,
                          separatorBuilder: (context, index) => SizedBox(width: 16),
                          itemBuilder: (context, index) {
                            bool isSelected = selectedWeight == weights[index];

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWeight = weights[index];
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: isSelected ? buttonBackgroundColor : Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "${weights[index]} kg",
                                    style: TextStyle(
                                      fontSize: isSelected ? 18 : 16,
                                      fontWeight: FontWeight.w500,
                                      color: isSelected ? Colors.white : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 16),

                      // Confirm Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        ),
                        onPressed: () {
                          print("Selected Weight: $selectedWeight kg");
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Confirm",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
