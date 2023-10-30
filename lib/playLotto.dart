import 'package:ewallet/lottoDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';

import '../common_widget.dart';
import '../appbar.dart';
import 'groupbutton.dart';

class PlayLotto extends StatelessWidget {
  const PlayLotto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: boldText("LOTTO", Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black, 18.0),
            ),
            const SizedBox(
              height: 10,
            ),
            boldText("Select board numbers", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldText("Board A(5.00)", Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black, 16.0),
                mediumText("Pick numbers", Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black, 14.0),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Groupie(
              list: [
                "52",
                "52",
                "52",
                "52",
                "52",
                "X",
                "X",
                "X",
                "X",
                "X",
                "1",
                "1",
                "1",
                "1",
                "1",
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: 170,
                  child: containerButton(() {}, "Spin", radius: 30.0),
                ),
                SizedBox(
                  height: 40,
                  width: 170,
                  child: containersButton(() {}, "Done",
                      color: ColorResources.white,
                      color2: ColorResources.blue1D3,
                      radius: 30.0,
                      textColor: ColorResources.black),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            mediumText("Shake phone or select Spin to choose random numbers",
                Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black, 12.0),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldText("Board A(5.00)", Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black, 16.0),
                mediumText("Pick numbers", Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black, 14.0),
              ],
            ),
            const Groupie(
              list: [
                "52",
                "51",
                "52",
                "52",
                "52",
                "X",
                "52",
                "X",
                "X",
                "X",
                "2",
                "1",
                "1",
                "1",
                "1",
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: 170,
                  child: containerButton(() {}, "Spin", radius: 30.0),
                ),
                SizedBox(
                  height: 40,
                  width: 170,
                  child: containersButton(() {}, "Done",
                      color: ColorResources.white,
                      color2: ColorResources.blue1D3,
                      radius: 30.0,
                      textColor: ColorResources.black),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            mediumText("Shake phone or select Spin to choose random numbers",
                Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black, 12.0),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: containerButton(() {
                Get.to(LottoDetails());
              }, "Continue", radius: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
