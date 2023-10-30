import 'package:ewallet/playLotto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../common_widget.dart';
import '../appbar.dart';

class SelectLotto extends StatelessWidget {
  const SelectLotto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            boldText("LOTTO", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 18.0),
            const SizedBox(
              height: 10,
            ),
            lightText("Please Select", ColorResources.grey777, 16.0),
            const SizedBox(
              height: 20,
            ),
            containerButton(() {
              Get.to(PlayLotto());

            }, "Play LOTTO", radius: 30.0),
            const SizedBox(
              height: 15,
            ),
            containersButton(() {}, "Play QuickPick",
                color: ColorResources.white,
                color2: ColorResources.greyE1E,
                radius: 30.0,
                textColor: ColorResources.black),
            const SizedBox(
              height: 15,
            ),
            containersButton(() {}, "View and Replay History",
                color: ColorResources.white,
                color2: ColorResources.greyE1E,
                radius: 30.0,
                textColor: ColorResources.black),
            const SizedBox(
              height: 15,
            ),
            containersButton(() {}, "View Winning Numbers",
                color: ColorResources.white,
                color2: ColorResources.greyE1E,
                radius: 30.0,
                textColor: ColorResources.black),
            const SizedBox(
              height: 15,
            ),
            containersButton(() {}, "View Jackpot",
                color: ColorResources.white,
                color2: ColorResources.greyE1E,
                radius: 30.0,
                textColor: ColorResources.black),
            const SizedBox(
              height: 15,
            ),
            containersButton(() {}, "View Divisions",
                color: ColorResources.white,
                color2: ColorResources.greyE1E,
                radius: 30.0,
                textColor: ColorResources.black),
            const SizedBox(
              height: 15,
            ),
            containersButton(() {}, "More Info",
                color: ColorResources.white,
                color2: ColorResources.greyE1E,
                radius: 30.0,
                textColor: ColorResources.black),
          ],
        ),
      ),
    );
  }
}
