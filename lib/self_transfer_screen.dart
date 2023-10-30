import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';

class SelfTrasferScreen extends StatelessWidget {
  const SelfTrasferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        title: boldText("Transfer", ColorResources.darkgrey, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            regularText(
                "Manage your money better by adding another account to make transfers",
                ColorResources.grey6B7,
                15),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                leading: Image.asset(Images.bobImage),
                title: boldText(
                    "NedBank ****1234", ColorResources.blue1D3, 16),
                subtitle:
                    mediumText("Saving Account", ColorResources.darkgrey, 16),
                trailing: SvgPicture.asset(
                  Images.checkIcon,
                  color: ColorResources.green1DA,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: ListTile(
                leading: SvgPicture.asset(Images.addNewBankImage),
                title: boldText("Add new bank", ColorResources.darkgrey, 16),
                trailing: const Icon(Icons.arrow_forward_ios,
                    size: 14, color: ColorResources.darkgrey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
