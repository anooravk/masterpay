import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/variable_controller.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:scratcher/scratcher.dart';

class RewardsDetailScreen extends StatefulWidget {
  const RewardsDetailScreen({Key? key}) : super(key: key);

  @override
  State<RewardsDetailScreen> createState() => _RewardsDetailScreenState();
}

class _RewardsDetailScreenState extends State<RewardsDetailScreen> {
  final scratchKey = GlobalKey<ScratcherState>();

  bool isScratch = false;

  final VariableController variableController = Get.put(VariableController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.blue1D3.withOpacity(0.6),
      body: Container(

        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.light
              ? ColorResources.white
              : ColorResources.black,
          image: const DecorationImage(
            image: AssetImage(Images.rewardsFullImage),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 25),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 30,

                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).brightness == Brightness.light
                          ? ColorResources.white
                          : ColorResources.black,
                    ),
                    child: const Icon(Icons.close, color: ColorResources.blue1D3, size: 25),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Scratcher(
                  key: scratchKey,
                  brushSize: 50,
                  threshold: 50,
                  // color: ColorResources.pinkFFE,
                  image: Image.asset(Images.rewardsScratchImage),
                  onChange: (value) {
                    setState((){
                      if (value == 100) {
                        log("Scratch progress: $value%");
                        isScratch = true;
                        log("$isScratch************");
                      }
                    });
                  },
                  child: Container(
                    height: 300,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? ColorResources.white
                          : ColorResources.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: SvgPicture.asset(Images.topEllipseImage),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: SvgPicture.asset(Images.bottomEllipseImage),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            boldText("R11", ColorResources.blue1D3, 48),
                            const SizedBox(height: 10),
                            regularText("Cashback", ColorResources.grey6B7, 30),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 5,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).brightness == Brightness.light
                        ? ColorResources.white
                        : ColorResources.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),

                  ),
                color: Theme.of(context).brightness == Brightness.light
                    ? ColorResources.white
                    : ColorResources.black,
                 ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: 30,
                    left: 30,
                    right: 30,
                    bottom: isScratch == true ? 40 : 120),
                child: isScratch == true
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mediumText("Congrats!", ColorResources.blue1D3, 28),
                          const SizedBox(height: 22),
                          regularText(
                              "Earned on Jan 7, 2020 for paying Bombay Saloon",
                              ColorResources.blue1D3,
                              16),
                          const SizedBox(height: 5),
                          regularText("Google ref ID:BDW350F4U635PFLI",
                              ColorResources.blue1D3, 16),
                          const SizedBox(height: 60),
                          containerButton(() {}, "Tell your friends"),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mediumText("Scratch Card", ColorResources.blue1D3, 28),
                          const SizedBox(height: 22),
                          regularText(
                              "Scratch the card above and you could earn rewards!",
                              ColorResources.blue1D3,
                              16),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
