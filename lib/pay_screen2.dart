import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/transaction_successful_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';

class PayScreen2 extends StatelessWidget {
  const PayScreen2({Key? key}) : super(key: key);

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
                color: ColorResources.black,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Get.bottomSheet(
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, top: 15, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              bottom: 25, left: 125, right: 125),
                          child: Divider(
                              thickness: 6, color: ColorResources.greyE1E),
                        ),
                        boldText(
                            "Select your bank", ColorResources.blue1D3, 20),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            // color: ColorResources.white,
                            border: Border.all(
                                color: ColorResources.greyE5E, width: 1),
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            leading: Image.asset(Images.bobImage),
                            title: boldText("NedBank ****1234",
                                ColorResources.blue1D3, 16),
                            subtitle: mediumText(
                                "Saving Account", ColorResources.blue1D3, 16),
                            trailing: SvgPicture.asset(
                              Images.checkIcon,
                              color: ColorResources.green1DA,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: ColorResources.greyF9F),
                          ),
                          child: ListTile(
                            leading: SvgPicture.asset(Images.addNewBankImage),
                            title: boldText(
                                "Add new bank", ColorResources.blue1D3, 16),
                            trailing: const Icon(Icons.arrow_forward_ios,
                                size: 14, color: ColorResources.blue1D3),
                          ),
                        ),
                        const SizedBox(height: 60),
                        containerButton(() {
                          Get.back();
                        }, "Confirm"),
                      ],
                    ),
                  ),
                  backgroundColor:Theme.of(context).brightness == Brightness.light
                                ? ColorResources.white
                                : ColorResources.black,
                  shape:  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // color: ColorResources.white,
                  border: Border.all(color: ColorResources.greyE5E, width: 1),
                ),
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  leading: Image.asset(Images.bobImage),
                  title: boldText(
                      "NedBank ****1234", ColorResources.darkgrey, 16),
                  subtitle:
                      mediumText("Saving Account", ColorResources.darkgrey, 16),
                  trailing: SvgPicture.asset(
                    Images.arrowDownIcon,
                    color: ColorResources.grey9CA,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            boldText("R 100", ColorResources.blue1D3, 40),
            const SizedBox(height: 25),
            Container(
              height: 40,
              width: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorResources.greyF3F,
              ),
              child: Center(
                child: regularText("Food", ColorResources.grey6B7, 14),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: containerButton(() {
                  Get.to(TransactionSuccessFulScreen());
                }, "Pay R100",color: ColorResources.darkgrey),
              ),
            ),
            SizedBox(height: Platform.isAndroid?40:60),

          ],
        ),
      ),
    );
  }
}
