import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';

class HelpAndFeedBackScreen extends StatelessWidget {
   HelpAndFeedBackScreen({Key? key}) : super(key: key);

   final List<Map> helpAndFeedBackList = [
     {
       "image":Images.help,
       "text": "Get help",
     },
     {
       "image":Images.sendFeedBackImage,
       "text": "Send feedback",
     },
     {
       "image":Images.raiseBbpsImage,
       "text": "Raise BBPS dispute",
     },
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.white,
      appBar: AppBar(
        // backgroundColor: ColorResources.white,
        automaticallyImplyLeading: false, //todo
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
        title: boldText("Help & feedback", ColorResources.darkgrey, 20),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 40),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: helpAndFeedBackList.length,
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
                    child: SvgPicture.asset(helpAndFeedBackList[index]["image"]),
                  ),
                ),
                title: mediumText(
                    helpAndFeedBackList[index]["text"], ColorResources.darkgrey, 16),
              ),
            ),
      ),
    );
  }
}
