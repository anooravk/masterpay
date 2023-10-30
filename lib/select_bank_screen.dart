import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/font_family.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';

class SelectBankScreen extends StatefulWidget {
  const SelectBankScreen({Key? key}) : super(key: key);

  @override
  State<SelectBankScreen> createState() => _SelectBankScreenState();
}

class _SelectBankScreenState extends State<SelectBankScreen> {
  FocusNode onFocus = FocusNode();
  bool nearByFocus = false;
  final TextEditingController searchController = TextEditingController();

  @override
  // ignore: must_call_super
  void initState() {
    onFocus.addListener(() {
      setState(() {
        nearByFocus = onFocus.hasFocus;
      });
    });
  }
  var searched = "".obs;

  var isFirst = true.obs;

  var foundAt;

  @override
  Widget build(BuildContext context) {
    final List<Map> popularBanksList1 = [
      {
        "image": Images.nedBank,
        "text": "NedBank",
      },
      {
        "image": Images.absa,
        "text": "ABSA",
      },
      {
        "image": Images.capitec,
        "text": "Capitec",
      },
      {
        "image": Images.firstNationalBank,
        "text": "First National Bank",
      },
      {
        "image": Images.standardBanks,
        "text": "Standard Bank",
      },

    ];

    final List<Map> popularBanksList2 = [
      {
        "image": Images.nedBank,
        "text": "NedBank",
      },
      {
        "image": Images.absa,
        "text": "ABSA",
      },
      {
        "image": Images.capitec,
        "text": "Capitec",
      },
      {
        "image": Images.firstNationalBank,
        "text": "First National Bank",
      },
      {
        "image": Images.standardBanks,
        "text": "Standard Bank",
      },
    ];

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
        title: boldText("Select your bank", ColorResources.blue1D3, 20),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: searchController,
                        onChanged: (val) {
                        setState(() {
                          searched.value = val;
                          isFirst.value = false;
                        });
                      },
                        cursorColor: ColorResources.black,
                        focusNode: onFocus,
                        style: TextStyle(
                          color: ColorResources.black,
                          fontSize: 16,
                          fontFamily: TextFontFamily.poppinsRegular,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15),
                            child: SvgPicture.asset(Images.search),
                          ),
                          hintText: "Search..",
                          hintStyle: TextStyle(
                            color: ColorResources.grey9CA,
                            fontSize: 16,
                            fontFamily: TextFontFamily.poppinsRegular,
                          ),
                          filled: true,
                          fillColor: ColorResources.greyF9F,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: ColorResources.greyF9F, width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: ColorResources.greyF9F, width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: ColorResources.greyF9F, width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    nearByFocus
                        ? InkWell(
                            onTap: () {
                              setState(() {
                                searchController.clear();
                                FocusScope.of(context).unfocus();
                              });
                            },
                            child:
                                boldText("Cancel", ColorResources.blue1D3, 16),
                          )
                        : Container(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            Obx((){
              var item = popularBanksList1.firstWhere(
                      (element) => element["text"]
                      .toString()
                      .toLowerCase()
                      .startsWith(searched.value.toString().toLowerCase()),
                  orElse: () => {"image": "", "text": "\tNothing found"});
              print(item);
              foundAt = popularBanksList1.indexOf(item);
              if (foundAt != -1 && !isFirst.value)
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        popularBanksList2[foundAt]["image"],
                        height: 45,
                        width: 45,
                      ),
                      const SizedBox(width: 10),
                      mediumText(popularBanksList2[foundAt]["text"],
                          ColorResources.blue1D3, 14),
                    ],
                  ),
                );
             else return  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: boldText("Popular banks", ColorResources.grey6B7, 20),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? ColorResources.white
                            : ColorResources.black,
                        border: Border.all(color: ColorResources.greyF9F),
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
                      child: LayoutBuilder(
                        builder: (context, constraints) => GridView.count(
                          padding: const EdgeInsets.only(top: 15, left: 2, right: 2),
                          childAspectRatio:
                          MediaQuery.of(context).size.aspectRatio * 3.5 /2.5,
                          shrinkWrap: true,
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                            popularBanksList1.length,
                                (index) => Padding(
                              padding:  const EdgeInsets.only(left: 20,right: 20),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(popularBanksList1[index]["image"]),
                                  ),
                                  const SizedBox(height: 5),
                                  mediumText(popularBanksList1[index]["text"],
                                      ColorResources.blue1D3, 13, TextAlign.center),
                                ],
                              ),
                            ),
                          ).toList(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: boldText("Popular banks", ColorResources.grey6B7, 20),
                  ),
                  const SizedBox(height: 18),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: popularBanksList2.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Image.asset(
                                  popularBanksList2[index]["image"],
                                  height: 45,
                                  width: 45,
                                ),
                                const SizedBox(width: 10),
                                mediumText(popularBanksList2[index]["text"],
                                    ColorResources.blue1D3, 14),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Divider(thickness: 1, ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }
            )
            ],
          ),
        ),
      ),
    );
  }
}
