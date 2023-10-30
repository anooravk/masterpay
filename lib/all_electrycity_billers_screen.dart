import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';

import 'all_electricity_billers_screen2.dart';

class AllElectriCityBillersScreen extends StatefulWidget {
  AllElectriCityBillersScreen({Key? key}) : super(key: key);

  @override
  State<AllElectriCityBillersScreen> createState() =>
      _AllElectriCityBillersScreenState();
}

class _AllElectriCityBillersScreenState
    extends State<AllElectriCityBillersScreen> {
  var searched = "".obs;

  var isFirst = true.obs;

  var foundAt;

  final searchController = TextEditingController();
  final List<Map> billersInGujaratList = [
    {
      "image": Images.telkom,
      "text": "Telkom",
    },
    {
      "image": Images.dstv,
      "text": "DSTV",
    },
    {
      "image": Images.openView,
      "text": "OpenView",
    },{
      "image": Images.eskom,
      "text": "Eskom",
    }
    
  ];

  final List<Map> allBillersList = [
    {
      "image": Images.telkom,
      "text": "Telkom",
    },
    {
      "image": Images.dstv,
      "text": "DSTV",
    },
    {
      "image": Images.openView,
      "text": "OpenView",
    },
    {
      "image": Images.eskom,
      "text": "Eskom",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // backgroundColor: ColorResources.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18, top: 8, bottom: 8),
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
        title: boldText("All Electricity billers", ColorResources.blue1D3, 20),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: textField("Search by biller", Images.search,
                    controller: searchController, onChanged: (val) {
                  setState(() {
                    searched.value = val;
                    isFirst.value = false;
                  });
                }),
              ),
              const SizedBox(height: 20),
              Obx(() {
                var item = allBillersList.firstWhere(
                    (element) => element["text"]
                        .toString()
                        .toLowerCase()
                        .startsWith(searched.value.toString().toLowerCase()),
                    orElse: () => {"image": "", "text": "\tNothing found"});
                print(item);
                foundAt = allBillersList.indexOf(item);
                if (foundAt != -1 && !isFirst.value)
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: InkWell(
                      onTap: () {
                        Get.to(const AllElectricityBillersScreen2());
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            billersInGujaratList[foundAt]["image"],
                          ),
                        ),
                        title: mediumText(
                            billersInGujaratList[foundAt]["text"],
                            ColorResources.blue1D3,
                            14),
                      ),
                    ),
                  );
                else
                 return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: boldText(
                            "Billers in Pretoria", ColorResources.grey6B7, 20),
                      ),
                      const SizedBox(height: 18),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: billersInGujaratList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(const AllElectricityBillersScreen2());
                                },
                                child: ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                      billersInGujaratList[index]["image"],
                                    ),
                                  ),
                                  title: mediumText(
                                      billersInGujaratList[index]["text"],
                                      ColorResources.blue1D3,
                                      14),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Divider(
                                thickness: 1,
                              ),
                              //color: ColorResources.greyF3F),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:
                            boldText("All Billers", ColorResources.grey6B7, 20),
                      ),
                      const SizedBox(height: 18),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: allBillersList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    allBillersList[index]["image"],
                                  ),
                                ),
                                title: mediumText(allBillersList[index]["text"],
                                    ColorResources.blue1D3, 14),
                              ),
                              const SizedBox(height: 10),
                              const Divider(
                                thickness: 1,
                              ),
                              // color: ColorResources.greyF3F),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
