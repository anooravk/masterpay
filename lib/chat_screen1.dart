import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';

class ChatScreen1 extends StatelessWidget {
  const ChatScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      body: Column(
        children: [
          Container(
            color: ColorResources.blue1D3,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 20),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: ColorResources.blue1D3,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: ColorResources.greyE5E.withOpacity(0.15),
                            width: 1),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: ColorResources.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Image.asset(Images.pImage, height: 50, width: 50),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText("Patel Soda", ColorResources.white, 18),
                      regularText("+233 123-4567-90", ColorResources.white, 13),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Image.asset(Images.pImage, height: 100, width: 100),
                    const SizedBox(height: 6),
                    boldText("Patel Soda", ColorResources.blue1D3, 24),
                    const SizedBox(height: 4),
                    regularText("+233 123-4567-90", ColorResources.blue1D3, 16),
                    regularText("Joined September 2020", ColorResources.grey6B7, 13),
                    const SizedBox(height: 14),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 28,
                              width: 95,
                              decoration: BoxDecoration(
                                color: ColorResources.greyF3F,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: regularText(
                                    "May 22, 2022", ColorResources.grey6B7, 12),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding:  const EdgeInsets.only(left: 130),
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: ColorResources.greyF9F,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      spreadRadius: 0,
                                      offset: const Offset(0, 2),
                                      color: ColorResources.black.withOpacity(0.25),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      boldText("R 100", ColorResources.blue1D3, 26),
                                      const SizedBox(height: 6),
                                      const Divider(
                                          thickness: 0.5,
                                          color: ColorResources.greyDEE),
                                      const SizedBox(height: 6),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:  const EdgeInsets.only(bottom: 12),
                                            child: SvgPicture.asset(Images.checkIcon),
                                          ),
                                          const SizedBox(width: 5),
                                          regularText("Payment to Patel\nSoda",
                                              ColorResources.blue1D3, 12),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: regularText("7:11 PM", ColorResources.grey6B7, 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: Get.width,
            decoration: BoxDecoration(
              color: ColorResources.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: const Offset(0, 0),
                  color: ColorResources.black.withOpacity(0.15),
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: containerButton(() {}, "Pay"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
