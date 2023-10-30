import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/voucher_detail_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';

class VoucherScreen extends StatelessWidget {
  VoucherScreen({Key? key}) : super(key: key);

  final List<Map> voucherList = [
    {
      "image": Images.amazonImage,
      "text1": "20% Cashback",
      "text2": "Amazon",
      "text3": "Aug 16-17",
    },
    {
      "image": Images.airBnbImage,
      "text1": "50% Off",
      "text2": "Airbnb",
      "text3": "Aug 16-17",
    },
    {
      "image": Images.mcdonaldsImage,
      "text1": "15% Off",
      "text2": "Macdonalds",
      "text3": "Aug 16-17",
    },
    {
      "image": Images.starbucksImage,
      "text1": "30% Cashback",
      "text2": "Starbucks",
      "text3": "Aug 16-17",
    },
    {
      "image": Images.kfcImage,
      "text1": "23% Off",
      "text2": "Kfc",
      "text3": "Aug 16-17",
    },
    {
      "image": Images.nikeImage,
      "text1": "40% Cashback",
      "text2": "Nike",
      "text3": "Aug 16-17",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18,top: 8,bottom: 8),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_outlined,

                  size: 16,
                ),
              ),
            ),
          ),
        ),
        title: boldText("Market", ColorResources.darkgrey, 20),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => ScrollConfiguration(
          behavior: MyBehavior(),
          child: GridView.count(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2.6 / 1.7,
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              voucherList.length,
              (index) => InkWell(
                onTap: () {},
                child: InkWell(
                  onTap: () {
                    Get.to(const VoucherDetailScreen());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).brightness == Brightness.light
                          ? ColorResources.white
                          : ColorResources.black,
                      border:
                          Border.all(color: ColorResources.greyE5E, width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 25, bottom: 15, left: 12, right: 12),
                      child: Column(
                        children: [
                          Image.asset(
                            voucherList[index]["image"],
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(height: 20),
                          boldText(voucherList[index]["text1"],
                              ColorResources.blue1D3, 18),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              regularText(voucherList[index]["text2"],
                                  ColorResources.blue1D3, 13),
                              regularText(voucherList[index]["text3"],
                                  ColorResources.darkgrey, 11),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
