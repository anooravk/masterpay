import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';

class EnterRecipientDetailScreen extends StatelessWidget {
  const EnterRecipientDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: ColorResources.white,
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
        title: boldText("Enter recipient details", ColorResources.blue1D3, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textField1("Account number"),
            const SizedBox(height: 15),
            textField1("Re-enter account number"),
            const SizedBox(height: 15),
            textField1("Bank Code"),
            const SizedBox(height: 15),
            textField1("Recipient name"),
            const SizedBox(height: 15),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                height: 52,
                width: Get.width,
                decoration: BoxDecoration(
                  color: ColorResources.darkgrey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: boldText("Continue", ColorResources.white, 16),
                ),
              ),
            ),
            const SizedBox(height: 15),
            regularText(
                "This information will be securely saved as per Spot Pay Terms of Service and Privacy Policy",
                ColorResources.grey9CA,
                14,
                TextAlign.center),
          ],
        ),
      ),
    );
  }
}
