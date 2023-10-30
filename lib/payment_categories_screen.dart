import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/all_electrycity_billers_screen.dart';
import 'package:ewallet/google_play_screen.dart';
import 'package:ewallet/mobile_recharge_screen.dart';
import 'package:ewallet/select_provider_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';

class PaymentCategoriesScreen extends StatelessWidget {
  PaymentCategoriesScreen({Key? key}) : super(key: key);
  final List<Map> rechargeList = [
    {
      "image": Images.mobileRechargeImage,
       "color":ColorResources.blue1D3,
      "text": "Mobile\nrecharge",
      "onTap": () {
        Get.to(MobileRechargeScreen());
      },
    },
    {
      "image": Images.monitorImage,
      "text": "DTH",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(SelectProviderScreen());
      },
    },
    {
      "image": Images.googlePlayImage,
      "text": "Google\nPlay",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(GooglePlayScreen());
      },
    },
    {
      "image": Images.fastagRecharge,
      "text": "FASTag\nrecharge",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
  ];

  final List<Map> utilityBillsList = [
    {
      "image": Images.electricityImage,
      "text": "Electricity",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.landLineImage,
      "text": "Broadband/Landline",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.mobileRechargeImage,
      "text": "Postpaid\nMobile",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(MobileRechargeScreen());
      },
    },
    {
      "image": Images.waterImage,
      "text": "Water",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.pipedGasImage,
      "text": "Piped gas",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.educationImage,
      "text": "Education",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.cylinderImage,
      "text": "Book A\nCylinder",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
  ];

  final List<Map> financeAndTaxList = [
    {
      "image": Images.insuranceImage,
      "color":ColorResources.blue1D3,
      "text": "Insurance",
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.emiImage,
      "text": "Loan EMI\npayment",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.creditCardBillImage,
      "text": "Credit\nCard Bill",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.municipalTaxImage,
      "text": "Municipal tax/Service",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
  ];

  final List<Map> otherList = [
    {
      "image": Images.subscriptionFeeImage,
      "text": "Subscription\nfee",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.housingImage,
      "text": "Housing\nsociety",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.hospitalImage,
      "text": "Hospital",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.donationImage,
      "text": "Donation",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
    {
      "image": Images.municipalTaxImage,
      "text": "Clubs & as sociations",
      "color":ColorResources.blue1D3,
      "onTap": () {
        Get.to(AllElectriCityBillersScreen());
      },
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // backgroundColor: ColorResources.white,//todo
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
        title: boldText("Payment categories", ColorResources.blue1D3, 20),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textField("Search", Images.search),
                const SizedBox(height: 15),
                boldText("RECHARGE", ColorResources.blue1D3, 16),
                const SizedBox(height: 15),
                LayoutBuilder(
                  builder: (context, constraints) => GridView.count(
                    padding: const EdgeInsets.only(top: 5, left: 2, right: 2),
                    childAspectRatio:
                        MediaQuery.of(context).size.aspectRatio * 3.6 / 2.8,
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      rechargeList.length,
                      (index) => Column(
                        children: [
                          InkWell(
                            onTap: rechargeList[index]["onTap"],
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorResources.greyF1F,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    offset: const Offset(0, 0),
                                    spreadRadius: 0,
                                    color:
                                        ColorResources.black.withOpacity(0.25),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset(
                                    rechargeList[index]["image"],color: rechargeList[index]["color"],),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          regularText(rechargeList[index]["text"],
                              ColorResources.grey6B7, 14, TextAlign.center),
                        ],
                      ),
                    ).toList(),
                  ),
                ),
                const SizedBox(height: 25),
                boldText("UTILITY BILLS", ColorResources.blue1D3, 16),
                const SizedBox(height: 15),
                LayoutBuilder(
                  builder: (context, constraints) => GridView.count(
                    padding: const EdgeInsets.only(top: 5, left: 2, right: 2),
                    childAspectRatio:
                        MediaQuery.of(context).size.aspectRatio * 2.2 /2,
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      utilityBillsList.length,
                      (index) => Column(
                        children: [
                          InkWell(
                            onTap: utilityBillsList[index]["onTap"],
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorResources.greyF1F,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    offset: const Offset(0, 0),
                                    spreadRadius: 0,
                                    color:
                                        ColorResources.black.withOpacity(0.25),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset(
                                    utilityBillsList[index]["image"],color: utilityBillsList[index]["color"],),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          regularText(utilityBillsList[index]["text"],
                              ColorResources.grey6B7, 14, TextAlign.center),
                        ],
                      ),
                    ).toList(),
                  ),
                ),
                const SizedBox(height: 10),
                boldText("FINANCE & TAX", ColorResources.blue1D3, 16),
                const SizedBox(height: 15),
                LayoutBuilder(
                  builder: (context, constraints) => GridView.count(
                    padding: const EdgeInsets.only(top: 5, left: 2, right: 2),
                    childAspectRatio:
                        MediaQuery.of(context).size.aspectRatio * 3 / 3,
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      financeAndTaxList.length,
                      (index) => Column(
                        children: [
                          InkWell(
                            onTap: financeAndTaxList[index]["onTap"],
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorResources.greyF1F,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    offset: const Offset(0, 0),
                                    spreadRadius: 0,
                                    color:
                                        ColorResources.black.withOpacity(0.25),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: SvgPicture.asset(
                                    financeAndTaxList[index]["image"],color: financeAndTaxList[index]["color"],),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          regularText(financeAndTaxList[index]["text"],
                              ColorResources.grey6B7, 14, TextAlign.center),
                        ],
                      ),
                    ).toList(),
                  ),
                ),
                const SizedBox(height: 10),
                boldText("OTHERS", ColorResources.blue1D3, 16),
                const SizedBox(height: 15),
                LayoutBuilder(
                  builder: (context, constraints) => GridView.count(
                    padding: const EdgeInsets.only(top: 5, left: 2, right: 2),
                    childAspectRatio:
                        MediaQuery.of(context).size.aspectRatio * 2.3 / 2,
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      otherList.length,
                      (index) => Column(
                        children: [
                          InkWell(
                            onTap: otherList[index]["onTap"],
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorResources.greyF1F,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    offset: const Offset(0, 0),
                                    spreadRadius: 0,
                                    color:
                                        ColorResources.black.withOpacity(0.25),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child:
                                    SvgPicture.asset(otherList[index]["image"],color: otherList[index]["color"],),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          regularText(otherList[index]["text"],
                              ColorResources.grey6B7, 13, TextAlign.center),
                        ],
                      ),
                    ).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
