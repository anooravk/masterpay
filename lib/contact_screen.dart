import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';

class ContactScreen extends StatefulWidget {
   ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
   var searched="".obs;

   var isFirst=true.obs;

   var foundAt;

   final searchController=TextEditingController();

   final List<Map> allPeopleList = [
     {
       "image": Images.lindaJohn,
       "text": "Linda John",
     },
     {
       "image": Images.davidWilliam,
       "text": "David William",
     },
     {
       "image": Images.susanCharles,
       "text": "Susan Charles",
     },
     {
       "image": Images.sarahSam,
       "text": "Sarah Sam",
     },
     {
       "image": Images.monicaJess,
       "text": "Monica Jess",
     },
     {
       "image": Images.loranHeliy,
       "text": "Loran Hailey",
     },
   ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      appBar: AppBar(
        backgroundColor: ColorResources.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 8,left: 18),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: ColorResources.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: ColorResources.black,
                  size: 16,
                ),
              ),
            ),
          ),
        ),
        title: boldText("Contact", ColorResources.black, 20),
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
                child: textField("Search by name or number", Images.search,controller: searchController,onChanged: (val){setState(() {
                  searched.value=val;
                  isFirst.value=false;
                });}),
              ),
              const SizedBox(height: 25),
              Obx(() {
                var item=allPeopleList.firstWhere((element) => element["text"].toString().toLowerCase().startsWith(searched.value.toString().toLowerCase()),orElse: () =>
                {"image":"","text":"\tNothing found"});
                print(item);
                foundAt=allPeopleList.indexOf(item);
                if(foundAt!=-1 && !isFirst.value)
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        AssetImage(allPeopleList[foundAt]["image"]),
                      ),
                      title: boldText(allPeopleList[foundAt]["text"],
                          ColorResources.blue1D3, 16),
                      subtitle: regularText(
                          "+233 123-4567-90", ColorResources.grey6B7, 11),
                    ),
                  );
                else return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 95,
                      width: Get.width,
                      child: ScrollConfiguration(
                        behavior: MyBehavior(),
                        child:  ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: allPeopleList.length,
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(left: 20),
                          itemBuilder: (context, index) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: InkWell(
                                  onTap: allPeopleList[index]["onTap"],
                                  child: CircleAvatar(
                                    radius: 35,
                                    backgroundColor: ColorResources.white,
                                    backgroundImage:
                                    AssetImage(allPeopleList[index]["image"]),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: regularText(allPeopleList[index]["text"],
                                    ColorResources.grey6B7, 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: boldText("All People", ColorResources.grey6B7, 20),
                    ),
                    const SizedBox(height: 25),
                    ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: allPeopleList.length,
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            AssetImage(allPeopleList[index]["image"]),
                          ),
                          title: boldText(allPeopleList[index]["text"],
                              ColorResources.blue1D3, 16),
                          subtitle: regularText(
                              "+233 123-4567-90", ColorResources.grey6B7, 11),
                        ),
                      ),
                    ),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
