import 'package:ewallet/people_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '/colors.dart';
import '/common_widget.dart';
import '/images.dart';
import 'chat_screen2.dart';

class ChatStarter extends StatelessWidget {
   ChatStarter({Key? key}) : super(key: key);
  final List<Map> peopleList = [
    {
      "image": Images.jenny,
      "text": "Jenny",
      "onTap": () {
        Get.to(const ChatScreen2());
      },
    },
    {
      "image": Images.bessie,
      "text": "Bessie",
      "onTap": () {
        Get.to(const ChatScreen2());
      },
    },
    {
      "image": Images.jacob,
      "text": "Jacob",
      "onTap": () {
        Get.to(const ChatScreen2());
      },
    },
    {
      "image": Images.darlene,
      "text": "Darlene",
      "onTap": () {
        Get.to(const ChatScreen2());
      },
    },
    {
      "image": Images.addPng,
      "text": "+ More",
      "onTap": () {
        Get.to(PeopleScreen());
      },
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
                    boldText("People", ColorResources.blue1D3, 20),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 95,
                      width: Get.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: peopleList.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: InkWell(
                                onTap: peopleList[index]["onTap"],
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundColor: ColorResources.white,
                                  backgroundImage:
                                      AssetImage(peopleList[index]["image"]),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: regularText(peopleList[index]["text"],
                                  ColorResources.grey6B7, 14),
                            ),
                          ],
                        ),
                      ),
                    ),
        ],
      ),
    );
  }
}
