import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/pay_screen2.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';

class PayScreen1 extends StatelessWidget {
  const PayScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.white,
      appBar: AppBar(
        // backgroundColor: ColorResources.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.close,
              // color: ColorResources.black,
              size: 25,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                // Get.back();
              },
              child: const Icon(
                Icons.more_vert,
                // color: ColorResources.black,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: ColorResources.black, width: 1.5),
                color: ColorResources.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(Images.lindaJohn),
              ),
            ),
            const SizedBox(height: 7),
            boldText("Paying Linda John", ColorResources.darkgrey, 22),
            const SizedBox(height: 6),
            regularText("+233 123-4567-90", ColorResources.blue1D3, 14),
            regularText("Banking name: LINDA JOHN\nDOE", ColorResources.blue1D3,
                14, TextAlign.center),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                boldText("R 0", ColorResources.grey6B7, 40),
                const SizedBox(
                  height: 50,
                  child: VerticalDivider(
                    color: ColorResources.black,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                    width: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 40,
              width: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorResources.greyF3F,
              ),
              child: Center(
                child: regularText("Add a note", ColorResources.grey6B7, 14),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: containerButton(() {
                    Get.to(const PayScreen2());
                  }, "Next",color: ColorResources.darkgrey),
                ),
              ),
            ),
             SizedBox(height: Platform.isAndroid?40:80),
          ],
        ),
      ),
    );
  }
}
