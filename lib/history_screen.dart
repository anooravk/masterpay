import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../notification_screen.dart';
import '../scan_qrcode_screen.dart';
import '../search_screen.dart';
import '../colors.dart';
import '../common_widget.dart';
import '../images.dart';
import '../main.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key? key}) : super(key: key);

  final List<Map> historyList = [
    {
      "image": Images.amazonPay,
      "text1": "Amazon Pay",
      "text2": "April 22, 2022 at 6:29 PM",
      "text3": "+ R5000",
      "text4": "",
    },
    {
      "image": Images.uber,
      "text1": "Uber",
      "text2": "April 21, 2022 at 11:00 PM",
      "text3": "- R400",
      "text4": "",
    },
    {
      "image": Images.jacob,
      "text1": "Jacob",
      "text2": "April 22, 2022 at 6:29 PM",
      "text3": "- R400",
      "text4": "",
    },
    {
      "image": Images.darlene,
      "text1": "Darlene",
      "text2": "April 21, 2022 at 11:00 PM",
      "text3": "R400",
      "text4": "Failed",
    },
    {
      "image": Images.dstv,
      "text1": "DSTV",
      "text2": "April 21, 2022 at 11:00 PM",
      "text3": "- R400",
      "text4": "",
    },
    {
      "image": Images.jenny,
      "text1": "Jenny",
      "text2": "April 22, 2022 at 6:29 PM",
      "text3": "+ R5490",
      "text4": "",
    },
    {
      "image": Images.zomato,
      "text1": "Zomato",
      "text2": "April 21, 2022 at 11:00 PM",
      "text3": "- R400",
      "text4": "",
    },
    {
      "image": Images.jacob,
      "text1": "Jacob",
      "text2": "April 22, 2022 at 6:29 PM",
      "text3": "- R400",
      "text4": "",
    },
    {
      "image": Images.darlene,
      "text1": "Darlene",
      "text2": "April 21, 2022 at 11:00 PM",
      "text3": "R400",
      "text4": "Failed",
    },
    {
      "image": Images.bessie,
      "text1": "Bessie",
      "text2": "April 22, 2022 at 6:29 PM",
      "text3": "- R400",
      "text4": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.white,
      body: Stack(
        children: [
          Container(
            width: Get.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(27),
                bottomLeft: Radius.circular(27),
              ),
              color: ColorResources.blue1D3,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 40, bottom: 20, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(SearchScreen());
                    },
                    child: SvgPicture.asset(Images.search,
                        color: ColorResources.white),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const ScanQrCodeScreen());
                    },
                    child: SvgPicture.asset(Images.scanIcon),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(NotificationScreen());
                    },
                    child: SvgPicture.asset(Images.notificationIcon),
                  ),
                ],
              ),
            ),
          ),
          ScrollConfiguration(
            behavior: MyBehavior(),
            child: Padding(
              padding: const EdgeInsets.only(top: 110, bottom: 100),
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20, right: 20),
                shrinkWrap: true,
                itemCount: historyList.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Get.defaultDialog(
                      // backgroundColor: ColorResources.white,
                      contentPadding: EdgeInsets.zero,
                      title: "",
                      titlePadding: EdgeInsets.zero,
                      content: Stack(
                        alignment: Alignment.topCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              // color: ColorResources.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 60),
                                  Center(
                                    child: boldText("Transaction Successful",
                                        ColorResources.blue1D3, 20),
                                  ),
                                  const SizedBox(height: 3),
                                  Center(
                                    child: regularText(
                                        "May 25, 2022 at 2:07 PM",
                                        ColorResources.grey6B7,
                                        13),
                                  ),
                                  const SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Image.asset(Images.bobImage,
                                          height: 50, width: 50),
                                      const SizedBox(width: 8),
                                      boldText("NedBank ****1234",
                                          ColorResources.blue1D3, 14),
                                    ],
                                  ),
                                  const SizedBox(height: 18),
                                  const Divider(
                                      thickness: 1,
                                      color: ColorResources.greyF3F),
                                  const SizedBox(height: 11),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      regularText("Transaction ID",
                                          ColorResources.grey6B7, 12),
                                      boldText("214085784512",
                                          ColorResources.blue1D3, 14),
                                    ],
                                  ),
                                  const SizedBox(height: 11),
                                  const Divider(
                                      thickness: 1,
                                      color: ColorResources.greyF3F),
                                  const SizedBox(height: 11),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      regularText("To: John Doe",
                                          ColorResources.grey6B7, 12),
                                      boldText("johndoe78ss@oksbi",
                                          ColorResources.blue1D3, 14),
                                    ],
                                  ),
                                  const SizedBox(height: 11),
                                  const Divider(
                                      thickness: 1,
                                      color: ColorResources.greyF3F),
                                  const SizedBox(height: 11),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      regularText("From: Jenny",
                                          ColorResources.grey6B7, 12),
                                      boldText("Jenny123@oksbi",
                                          ColorResources.blue1D3, 14),
                                    ],
                                  ),
                                  const SizedBox(height: 11),
                                  const Divider(
                                      thickness: 1,
                                      color: ColorResources.greyF3F),
                                  const SizedBox(height: 11),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      regularText("Google transaction ID",
                                          ColorResources.grey6B7, 12),
                                      boldText("CICAgOCb1YuGlg",
                                          ColorResources.blue1D3, 14),
                                    ],
                                  ),
                                  const SizedBox(height: 11),
                                  const Divider(
                                      thickness: 1,
                                      color: ColorResources.greyF3F),
                                  const SizedBox(height: 11),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      mediumText("CICAgOCb1YuGlg",
                                          ColorResources.grey6B7, 16),
                                      boldText(
                                          "R500", ColorResources.blue1D3, 20),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  containerButton(() {
                                    Get.back();
                                  }, "Ok, Send Now!"),
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                            top: -70,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(Images.jenny),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(bottom: 30),
                    leading: CircleAvatar(
                      radius: 30,
                      // backgroundColor: ColorResources.white,
                      backgroundImage: AssetImage(
                        historyList[index]["image"],
                      ),
                    ),
                    title: boldText(historyList[index]["text1"],
                        ColorResources.blue1D3, 18),
                    subtitle: regularText(historyList[index]["text2"],
                        ColorResources.grey6B7, 14),
                    trailing: index == 3 || index == 8
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              boldText(
                                  historyList[index]["text3"],
                                  index == 0 || index == 5
                                      ? ColorResources.green00B
                                      : index == 3 || index == 8
                                          ? ColorResources.black
                                              .withOpacity(0.35)
                                          : ColorResources.redF53,
                                  21),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: regularText(historyList[index]["text4"],
                                    ColorResources.redF53, 14),
                              ),
                            ],
                          )
                        : boldText(
                            historyList[index]["text3"],
                            index == 0 || index == 5
                                ? ColorResources.green00B
                                : index == 3 || index == 8
                                    ? ColorResources.black.withOpacity(0.35)
                                    : ColorResources.redF53,
                            21),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
