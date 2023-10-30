import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/select_provider_bill_payment_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';

class SelectProviderBillScreen extends StatelessWidget {
  const SelectProviderBillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // backgroundColor: ColorResources.white, //todo
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
        title: boldText("Telkom", ColorResources.blue1D3, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textField1("Subscriber ID"),
            const SizedBox(height: 10),
            regularText(
                "Your Subscriber id is located on your TV menu, on the bottom of the screen",
                ColorResources.grey9CA,
                12),
            const Spacer(),
            InkWell(
              onTap: () {
                Get.to(const SelectProviderBillPaymentScreen());
              },
              child: Container(
                height: 52,
                width: Get.width,
                decoration: BoxDecoration(
                  color: ColorResources.greyC1C,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: boldText("Confirm", ColorResources.white, 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
