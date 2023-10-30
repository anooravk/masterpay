import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/edit_account_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.white,
      appBar: AppBar(
        // backgroundColor: ColorResources.white, //todo
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
        title: boldText("Personal info", ColorResources.darkgrey, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    // backgroundColor: ColorResources.white,
                    backgroundImage: AssetImage(Images.johnDeo),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: ColorResources.white, width: 2),
                      color: ColorResources.blue1D3,
                    ),
                    child: const Icon(Icons.edit_outlined,
                        color: ColorResources.white, size: 14),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            boldText("Personal Info", ColorResources.darkgrey, 16),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorResources.greyF3F, width: 1),
                // color: ColorResources.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        boldText("Name", ColorResources.grey6B7, 14),
                        const SizedBox(height: 15),
                        boldText("Mobile Number", ColorResources.grey6B7, 14),
                        const SizedBox(height: 15),
                        boldText("Email", ColorResources.grey6B7, 14),
                        const SizedBox(height: 15),
                        boldText("Language", ColorResources.grey6B7, 14),
                        const SizedBox(height: 15),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 15),
                        boldText("John Doe", ColorResources.blue1D3, 14),
                        const SizedBox(height: 15),
                        boldText("+233 123-4567-90", ColorResources.blue1D3, 14),
                        const SizedBox(height: 15),
                        boldText("Johndoe@gmail.com", ColorResources.blue1D3, 14),
                        const SizedBox(height: 15),
                        boldText("English (united States)",
                            ColorResources.blue1D3, 14),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    child: QrImage(
                      backgroundColor:ColorResources.white,
                      data:"code",
                      version:QrVersions.auto,
                    ),
                  ),
                  regularText("code", ColorResources.blue1D3, 14,TextAlign.center),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                Get.to(const EditAccountScreen());
              },
              child: Container(
                height: 52,
                width: Get.width,
                decoration: BoxDecoration(
                  // color: ColorResources.greyF9F,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: ColorResources.darkgrey)
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: boldText("Edit", ColorResources.blue1D3, 16),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
