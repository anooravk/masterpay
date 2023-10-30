import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/about_screen.dart';
import 'package:ewallet/help_fedback_screen.dart';
import 'package:ewallet/personal_info_screen.dart';
import 'package:ewallet/privacy_security_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  final List<Map> list1 = [
    {
      "image": Images.profileBlankIcon,
      "text": "Personal info",
      "onTap": () {
        Get.to(const PersonalInfoScreen());
      },
    },
    {
      "image": Images.privacyAndSecurityImage,
      "text": "Privacy & security",
      "onTap": () {
        Get.to(PrivacyAndSecurityScreen());
      },
    },
  ];

  final List<Map> list2 = [
    {
      "image": Images.lockImage,
      "text": "Lock app",
      "onTap": () {},
    },
    {
      "image": Images.help,
      "text": "Help & feedback",
      "onTap": () {
        Get.to(HelpAndFeedBackScreen());
      },
    },
    {
      "image": Images.aboutImage,
      "text": "About",
      "onTap": () {
        Get.to(AboutScreen());
      },
    },
    {
      "image": Images.logOutImage,
      "text": "Sign out",
      "onTap": () {
        Get.defaultDialog(

          contentPadding: EdgeInsets.zero,
          title: "",
          titlePadding: EdgeInsets.zero,
          content: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                boldText("Sign out", ColorResources.blue1D3, 18),
                const SizedBox(height: 10),
                regularText(
                    "You can always access your content by Signing back in",
                    ColorResources.grey6B7,
                    16,
                    TextAlign.center),
                const SizedBox(height: 20),
                const Divider(color: ColorResources.greyEDE, thickness: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: regularText("Cancel", ColorResources.blue1D3, 16),
                    ),
                    const SizedBox(width: 30),
                    const SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: ColorResources.greyEDE,
                        thickness: 1,
                        indent: 10,
                        endIndent: 0,
                        width: 20,
                      ),
                    ),
                    const SizedBox(width: 30),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: mediumText("Logout", ColorResources.redD90, 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
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
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? ColorResources.white
                    : ColorResources.black,
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
        title: boldText("Settings", ColorResources.darkgrey, 20),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                itemCount: list1.length,
                padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: InkWell(
                    onTap: list1[index]["onTap"],
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? ColorResources.white
                            : ColorResources.black,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: const Offset(0, 0),
                            color: ColorResources.black.withOpacity(0.25),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: ColorResources.greyF6F,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset(
                              list1[index]["image"],
                            ),
                          ),
                        ),
                        title: mediumText(
                            list1[index]["text"], ColorResources.darkgrey, 16),
                        trailing: const Icon(Icons.arrow_forward_ios,
                            color: ColorResources.blue1D3, size: 18),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 1,),
              ListView.builder(
                itemCount: list2.length,
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: InkWell(
                    onTap: list2[index]["onTap"],
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? ColorResources.white
                            : ColorResources.black,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 0,
                            offset: const Offset(0, 0),
                            color: ColorResources.black.withOpacity(0.25),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: ColorResources.greyF6F,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset(
                              list2[index]["image"],
                            ),
                          ),
                        ),
                        title: mediumText(
                            list2[index]["text"], ColorResources.darkgrey, 16),
                        trailing: const Icon(Icons.arrow_forward_ios,
                            color: ColorResources.blue1D3, size: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
