import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../common_widget.dart';
import '../images.dart';
import '../welcome_screen.dart';
import '../welcomecont.dart';


class OnBoardingScreen extends StatefulWidget {
   const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController(initialPage: 0);
  final welcomePageController= Get.put(WelcomeController());
  int index = 0;
  List pageViewList = [
    {
      "image": Images.screen1,
      "text1": "Welcome to MasterPay",
      "text2": "Where sending and receiving money is just a scan away!"
    },
    {
      "image": Images.screen2,
      "text1": "Just a Scan Away",
      "text2": "Say goodbye to long waits and complicated payment processes. MasterPay is here to simplify your transactions."
    },
    {
      "image": Images.screen3,
      "text1": "Payments Made Simple",
      "text2": "Join users all over Ghana and experience hassle-free transactions with MasterPay. Connect with anyone, anywhere, and send or receive money instantly."
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: pageViewList.length,
            controller: pageController,
            scrollDirection: Axis.horizontal,
            onPageChanged: (i) {
              setState(
                () {
                  index = i;
                },
              );
            },
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.only(left: 0, top: 50, right: 0, bottom: 140),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    index == 0 || index == 1
                        ? InkWell(
                            onTap: () {
                              Get.to(WelcomeScreen());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                lightText("Skip", ColorResources.darkgrey, 14),
                                const SizedBox(width: 5),
                                const Icon(Icons.arrow_forward_ios,
                                    size: 16, color: ColorResources.darkgrey),
                              ],
                            ),
                          )
                        : const SizedBox.shrink(),
                    boldText(pageViewList[index]["text1"],
                        ColorResources.blue1D3, 24),
                    Center(
                      child: SizedBox(
                        height:450,
                        width: Get.width,
                        child: Image.asset(
                          pageViewList[index]["image"],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 25, right: 25, bottom: index == 0 ? 20 : 0),
                      child: lightText(pageViewList[index]["text2"],
                          ColorResources.grey6B7, 14, TextAlign.center),
                    ),
                  ],
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pageViewList.length,
                (position) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == position
                          ? ColorResources.blue1D3
                          : ColorResources.greyB3B,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          index == 2
              ? Get.off(WelcomeScreen())
              : pageController.nextPage(
                  duration: 300.milliseconds, curve: Curves.ease);
        },
        elevation: 0,
        backgroundColor: ColorResources.darkgrey,
        child: const Icon(
          Icons.arrow_forward_ios,
          color: ColorResources.white,
          size: 25,
        ),
      ),
    );
  }
}
