import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/font_family.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';


class SetPinScreen extends StatelessWidget {
  const SetPinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                // color: ColorResources.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  // color: ColorResources.black,
                  size: 16,
                ),
              ),
            ),
          ),
        ),
        title: boldText("Set Pin", ColorResources.blue1D3, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 25, right: 25),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldText("Set a pin to secure your payments", ColorResources.blue1D3, 20,TextAlign.center),
                const SizedBox(height: 20),
                boldText("Pin", ColorResources.grey6B7, 16),
                const SizedBox(height: 12),
                textField1("****"),
                const SizedBox(height: 12),
                boldText("Confirm Pin", ColorResources.grey6B7, 16),
                const SizedBox(height: 12),
                textField1("****"),
                const SizedBox(height: 25),
                SizedBox(height: Get.height/3.5),
                containerButton(() {}, "Save",color: ColorResources.darkgrey),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
