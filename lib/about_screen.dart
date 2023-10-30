import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';


class AboutScreen extends StatelessWidget {
  AboutScreen({Key? key}) : super(key: key);
  final List<Map> aboutList = [
    {
      "image":Images.termsOfServicesImage,
      "text": "Terms of service",
    },
    {
      "image":Images.privacyPolicyImage,
      "text": "Privacy policy",
    },
    {
      "image":Images.softwareLicensesImage,
      "text": "Software licenses",
    },
    {
      "image":Images.aboutImage,
      "text": "Version 150.1.5\n(arm64-v8a_release_flutter)",
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
        title: boldText("About", ColorResources.darkgrey, 20),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 40),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: aboutList.length,
        itemBuilder: (context, index) =>
            Padding(
              padding:  const EdgeInsets.only(bottom: 15),
              child: ListTile(
                leading: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorResources.greyF6F,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(aboutList[index]["image"]),
                  ),
                ),
                title: mediumText(
                    aboutList[index]["text"], ColorResources.darkgrey, 16),
              )
            ),
      ),
    );
  }
}
