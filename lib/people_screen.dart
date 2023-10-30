import 'package:ewallet/rout_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/chat_screen2.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';

class PeopleScreen extends StatelessWidget {
   PeopleScreen({Key? key}) : super(key: key);

   final List<Map> peopleList = [
     {
       "image": Images.jenny,
       "text": "Jenny",
     },
     {
       "image": Images.bessie,
       "text": "Bessie",
     },
     {
       "image": Images.jImage,
       "text": "Jacob",
     },
     {
       "image": Images.darlene,
       "text": "Darlene",
     },
     {
       "image": Images.a1Image,
       "text": "Annette",
     },
     {
       "image": Images.darlene,
       "text": "Darlene",
     },
     {
       "image": Images.dImage,
       "text": "Darlene",
     },
     {
       "image": Images.jenny,
       "text": "Jenny ",
     },
     {
       "image": Images.a2Image,
       "text": "Annette",
     },
     {
       "image": Images.jenny,
       "text": "Jenny",
     },
     {
       "image": Images.darlene,
       "text": "Darlene",
     },
   ];

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
          padding: const EdgeInsets.only(top: 8,bottom: 8,left:18 ),
          child: InkWell(
            onTap: () {
              Get.offAll(RoutScreen());
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
        title: boldText("People", ColorResources.darkgrey, 20),
      ),
      body:  LayoutBuilder(
        builder: (context, constraints) => GridView.count(
          padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
          childAspectRatio:
          MediaQuery.of(context).size.aspectRatio * 3.5 / 2.4,
          shrinkWrap: true,
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            peopleList.length,
                (index) => Column(
              children: [
                InkWell(
                  onTap: (){
                    Get.to(const ChatScreen2());
                  },
                  child: Image.asset(
                    peopleList[index]["image"],
                  ),
                ),
                const SizedBox(height: 5),
                regularText(peopleList[index]["text"],
                    ColorResources.darkgrey, 14, TextAlign.center),
              ],
            ),
          ).toList(),
        ),
      ),
    );
  }
}
