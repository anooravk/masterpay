import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../splash_controller.dart';
import '../images.dart';
import '../prefs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashController splashController = Get.put(SplashController());
  var mode=false;
  check() async {
   mode = await SharedPrefs().getThemeStatus(key: "theme");
    setState(() {});
  }

  @override
  void initState() {
    check();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: Get.height,
        color: mode?Colors.black:Colors.white,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            NestedCircles(
              mode: mode,
              position: Get.height / 1200,
              diameter: 800.0,
            ),
            NestedCircles(
              mode: mode,
              position: Get.height / 17,
              diameter: 700.0,
            ),
            NestedCircles(
              mode: mode,
              position: Get.height / 8.5,
              diameter: 600.0,
            ),
            NestedCircles(
              mode: mode,
              position: Get.height / 5.5,
              diameter: 500.0,
            ),
            NestedCircles(
              mode: mode,
              position: Get.height / 4.1,
              diameter: 400.0,
            ),
            NestedCircles(
              mode: mode,
              position: Get.height / 3.3,
              diameter: 300.0,
            ),
            Positioned(
              top: Platform.isAndroid ?Get.height / 2.3:Get.height / 2.4,
              child: SvgPicture.asset(
                mode?Images.gpayLog2:Images.gpayLog,
                height: 85,
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class NestedCircles extends StatelessWidget {
  final double diameter;
  final double position;
  bool mode;

  NestedCircles({
    required this.diameter,
    required this.position,
    this.mode=false,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: position,
      child: Container(
        height: diameter,
        width: diameter,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: mode?Colors.white24:Colors.black.withAlpha(20),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(1, 1),
          ),
        ], shape: BoxShape.circle, color: mode?Colors.black:Colors.white),
      ),
    );
  }
}
