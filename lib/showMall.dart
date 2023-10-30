import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';

import '../images.dart';
import '/common_widget.dart';
import '/appbar.dart';

class ShowMall extends StatelessWidget {
  const ShowMall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            boldText("Mall Parking", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 25.0,
                TextAlign.center),
            mediumText("\t\t\t\tExit Granted\nHave a great day!",
                ColorResources.black, 16.0),
            Image.asset(
              Images.iconTick,
              height: 60,
            ),
            Image.asset(
              Images.iconMall,
              height: 160,
            ),
            mediumText("Please scan the QR code\non the exit boomgate!",
                ColorResources.blue1D3, 14.0, TextAlign.center),
            SizedBox(
              width: 200,
              child: containerButton(() {
                Get.to(ShowMall());
              }, "Scan", radius: 20.0),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
