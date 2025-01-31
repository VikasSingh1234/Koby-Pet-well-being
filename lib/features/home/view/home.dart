import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pet_wellbeing/common/design_system/color.dart';
import 'package:pet_wellbeing/features/ask/views/ask_view.dart';
import 'package:pet_wellbeing/features/home/controller/home_controller.dart';
import 'package:pet_wellbeing/features/home/view/home_page_view.dart';
import 'package:pet_wellbeing/features/tips/views/tips_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController _homeController = Get.put(HomeController());
  var pages = [
    HomePageView(),
    HomePageView(),
    AskView(),
    HomePageView(),
    TipsView(),
  ].obs;
  @override
  Widget build(BuildContext context) {
    return Obx((){
        return Scaffold(
          backgroundColor: buttonTextColor,
          body: pages[_homeController.pageIndex.value],
          bottomNavigationBar: BottomAppBar(
            elevation: 5,
            color: backGroundColor,
            child: SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        _homeController.pageIndex.value = 0;
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/home/home.svg',
                              height: 30,
                              width: 30,
                              color: _homeController.pageIndex.value==0?
                              homeTabSelectedColor : homeTabNotSelectedColor,
                            ),
                            SizedBox(height: 4,),
                            Text(
                              "Home",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 11,
                                color: _homeController.pageIndex.value==0?
                                homeTabSelectedColor : homeTabNotSelectedColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _homeController.pageIndex.value = 1;
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/home/schedule.svg',
                              height: 30,
                              width: 30,
                              color: _homeController.pageIndex.value==1?
                              homeTabSelectedColor : homeTabNotSelectedColor,
                            ),
                            SizedBox(height: 4,),
                            Text(
                              "Schedule",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 11,
                                color: _homeController.pageIndex.value==1?
                                homeTabSelectedColor : homeTabNotSelectedColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _homeController.pageIndex.value = 2;
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/home/ask.svg',
                              height: 35,
                              width: 35,
                              color: _homeController.pageIndex.value==2?
                              homeTabSelectedColor : homeTabNotSelectedColor,
                            ),
                            SizedBox(height: 4,),
                            Text(
                              "Ask",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 11,
                                color: _homeController.pageIndex.value==2?
                                homeTabSelectedColor : homeTabNotSelectedColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _homeController.pageIndex.value = 3;
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/home/medical.svg',
                              height: 30,
                              width: 30,
                              color: _homeController.pageIndex.value==3?
                              homeTabSelectedColor : homeTabNotSelectedColor,
                            ),
                            SizedBox(height: 4,),
                            Text(
                                "Medical",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 11,
                                color: _homeController.pageIndex.value==3?
                                homeTabSelectedColor : homeTabNotSelectedColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        _homeController.pageIndex.value = 4;
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/home/tips.svg',
                              height: 30,
                              width: 30,
                              color: _homeController.pageIndex.value==4?
                              homeTabSelectedColor : homeTabNotSelectedColor,
                            ),
                            SizedBox(height: 4,),
                            Text(
                                "Tips",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 11,
                                color: _homeController.pageIndex.value==4?
                                homeTabSelectedColor : homeTabNotSelectedColor,
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
        );
      }
    );
  }
}
