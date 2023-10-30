import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';

class ElectricityBillPaymentScreen extends StatelessWidget {
  const ElectricityBillPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ColorResources.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 18),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: ColorResources.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: ColorResources.black,
                  size: 16,
                ),
              ),
            ),
          ),
        ),
        title: boldText("Electricity Bill Payment", ColorResources.black, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorResources.white,
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(Images.bill5),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: regularText(
                            "Consumer ID", ColorResources.grey6B7, 12),
                      ),
                      subtitle:
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: boldText("123-45678-89", ColorResources.blue1D3, 16),
                          ),
                    ),
                    const Divider(thickness: 1, color: ColorResources.greyE5E),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            regularText(
                                "Consumer Name:", ColorResources.grey6B7, 12),
                            const SizedBox(height: 10),
                            regularText(
                                "Bill Number:", ColorResources.grey6B7, 12),
                            const SizedBox(height: 10),
                            regularText(
                                "Bill Date:", ColorResources.grey6B7, 12),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            boldText("John Doe", ColorResources.blue1D3, 14),
                            const SizedBox(height: 10),
                            boldText("000136542", ColorResources.blue1D3, 14),
                            const SizedBox(height: 10),
                            boldText(
                                "May 31, 2022", ColorResources.blue1D3, 14),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ColorResources.white,
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldText("R 1,300", ColorResources.blue1D3, 16),
                    const SizedBox(height: 4),
                    regularText(
                        "Please verify your details before proceeding to "
                        "payment No interest will be paid for advance "
                        "payments",
                        ColorResources.grey9CA,
                        13),
                  ],
                ),
              ),
            ),
            const Spacer(),
            containerButton(() {}, "Proceed To Pay"),
          ],
        ),
      ),
    );
  }
}
