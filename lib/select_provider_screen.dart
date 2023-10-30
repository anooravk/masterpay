import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/select_provider_bill_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';

class SelectProviderScreen extends StatelessWidget {
  SelectProviderScreen({Key? key}) : super(key: key);

  final List<Map> selectProviderList = [
    {
      "image": Images.telkom,
      "text": "Telkom",
    },
    {
      "image": Images.openView,
      "text": "OpenView",
    },
    {
      "image": Images.eskom,
      "text": "Eskom",
    },
    {
      "image": Images.dstv,
      "text": "DSTV",
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
        title: boldText("Select Provider", ColorResources.blue1D3, 20),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView.builder(
          itemCount: selectProviderList.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: InkWell(
              onTap: () {
                Get.to(const SelectProviderBillScreen());
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // color: ColorResources.white,
                  border: Border.all(color: ColorResources.greyE5E, width: 1),
                ),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        selectProviderList[index]["image"],
                      ),
                    ),
                  ),
                  title: boldText(selectProviderList[index]["text"],
                      ColorResources.blue1D3, 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
