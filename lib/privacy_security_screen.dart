import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/variable_controller.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';


class PrivacyAndSecurityScreen extends StatelessWidget {
  PrivacyAndSecurityScreen({Key? key}) : super(key: key);

  final VariableController variableController = Get.put(VariableController());

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
        title: boldText("Privacy & Security", ColorResources.darkgrey, 20),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              ListTile(
                leading: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorResources.greyF6F,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(Images.dataPersonlizationImage),
                  ),
                ),
                title: mediumText(
                    "Data & Personalization", ColorResources.darkgrey, 16),
                subtitle: regularText("Manage how your info is saved and used",
                    ColorResources.blue1D3, 12),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorResources.greyF6F,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(Images.lockImage),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child:  mediumText("Enable app lock", ColorResources.darkgrey, 16),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: regularText(
                      "Secure your app using your screen"
                      "lock or Google PIN so only you can "
                      "access it",
                      ColorResources.blue1D3,
                      12),
                ),
                trailing: Obx(
                  () => Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                      onChanged: (val) =>
                          variableController.switchIsOpen.toggle(),
                      value: variableController.switchIsOpen.value,
                      activeColor: ColorResources.green1DA,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: mediumText(
                    "Manage your app lock", ColorResources.green1DA, 14),
              ),
              const SizedBox(height: 25),
              ListTile(
                leading: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorResources.greyF6F,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(Images.otpImage),
                  ),
                ),
                title: mediumText("Get OTP code", ColorResources.darkgrey, 16),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: regularText(
                      "Enter this one-time code when you call \nSpot Pay Support",
                      ColorResources.blue1D3,
                      12),
                ),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorResources.greyF6F,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(Images.blockedImage),
                  ),
                ),
                title: mediumText("Blocked people", ColorResources.darkgrey, 16),
                subtitle: regularText("See and edit people you’ve blocked",
                    ColorResources.blue1D3, 12),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorResources.greyF6F,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(Images.search),
                  ),
                ),
                title: mediumText("How people find you on Spot Pay",
                    ColorResources.darkgrey, 16),
                subtitle: regularText("Manage your profile preferences",
                    ColorResources.blue1D3, 12),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
