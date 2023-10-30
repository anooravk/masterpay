import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';

class BankBalanceScreen extends StatelessWidget {
  const BankBalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.white,
      appBar: AppBar(
        // backgroundColor: ColorResources.white, //todo
        // automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8, left: 18, bottom: 8),
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
        title: boldText("Bank Balance", ColorResources.blue1D3, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                // color: ColorResources.white,
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                title:
                    boldText("NedBank 1234", ColorResources.blue1D3, 16),
                subtitle:
                    mediumText("Saving Account", ColorResources.grey6B7, 12),
              ),
            ),
            const SizedBox(height: 35),
            mediumText("Account balance", ColorResources.grey6B7, 14),
            const SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                boldText("R", ColorResources.grey6B7, 38),//₹
                const SizedBox(width: 10),
                boldText("18,256", ColorResources.blue1D3, 38),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
