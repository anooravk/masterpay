import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/variable_controller.dart';
import 'package:ewallet/contact_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/font_family.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';

class MobileRechargeScreen extends StatelessWidget {
  MobileRechargeScreen({Key? key}) : super(key: key);

  final VariableController variableController = Get.put(VariableController());

  final List<Map> allPeopleList = [
    {
      "image": Images.lindaJohn,
      "text": "Linda John",
      "image2": Images.jioImage,
    },
    {
      "image": Images.davidWilliam,
      "text": "David William",
      "image2": Images.airtelImage,
    },
    {
      "image": Images.susanCharles,
      "text": "Susan Charles",
      "image2": Images.viImage,
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
          padding: const EdgeInsets.only(top: 8,bottom: 8,left: 18),
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
        title: boldText("Mobile recharge", ColorResources.blue1D3, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  cursorColor: ColorResources.black,
                  style: TextStyle(
                    color: ColorResources.black,
                    fontSize: 16,
                    fontFamily: TextFontFamily.poppinsRegular,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: mediumText("+233", ColorResources.blue1D3, 18),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          Get.to(ContactScreen());
                        },
                        child: SvgPicture.asset(Images.noteIcon),
                      ),
                    ),
                    hintText: "Enter Mobile Number",
                    hintStyle: TextStyle(
                      color: ColorResources.grey9CA,
                      fontSize: 16,
                      fontFamily: TextFontFamily.poppinsRegular,
                    ),
                    filled: true,
                    fillColor: ColorResources.greyF9F,
                    border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: ColorResources.greyF9F, width: 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: ColorResources.greyF9F, width: 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: ColorResources.greyF9F, width: 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Obx(
                  () => Container(
                    height: 55,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: variableController.arrowClick1.value == true
                          ? ColorResources.blue1D3
                          : ColorResources.greyF9F,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          regularText(
                              "Select Operator",
                              variableController.arrowClick1.value == true
                                  ? ColorResources.white
                                  : ColorResources.grey9CA,
                              16),
                          Obx(
                            () => InkWell(
                              onTap: () {
                                variableController.arrowClick1.value =
                                    !variableController.arrowClick1.value;
                              },
                              child: SvgPicture.asset(
                                  variableController.arrowClick1.value == true
                                      ? Images.arrowUp
                                      : Images.arrowDownIcon,
                                  color: variableController.arrowClick1.value ==
                                          true
                                      ? ColorResources.white
                                      : ColorResources.grey9CA),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Obx(
                      () => variableController.arrowClick2.value == true
                      ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Theme.of(context).brightness == Brightness.light
                            ? ColorResources.white
                            : ColorResources.black,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            spreadRadius: 0,
                            offset: const Offset(0, 4),
                            color: ColorResources.black.withOpacity(0.09),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Image.asset(Images.jioCard,
                                    height: 30, width: 30),
                                const SizedBox(width: 15),
                                regularText(
                                    "Jio", ColorResources.grey6B7, 18),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Divider(
                              thickness: 1,
                              color: ColorResources.grey777),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Image.asset(Images.airtelCard,
                                    height: 30, width: 30),
                                const SizedBox(width: 15),
                                regularText(
                                    "airtel", ColorResources.grey6B7, 18),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Divider(
                              thickness: 1,
                              color: ColorResources.grey777),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Image.asset(Images.vodafoneCard,
                                    height: 30, width: 30),
                                const SizedBox(width: 15),
                                regularText("Vodafone",
                                    ColorResources.grey6B7, 18),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Divider(
                              thickness: 1,
                              color: ColorResources.grey777),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Image.asset(Images.ideaCard,
                                    height: 30, width: 30),
                                const SizedBox(width: 15),
                                regularText(
                                    "Idea", ColorResources.grey6B7, 18),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  )
                      : const SizedBox.shrink(),
                ),
                const SizedBox(height: 16),
                Obx(
                  () => Container(
                    height: 55,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: variableController.arrowClick2.value == true
                          ? ColorResources.blue1D3
                          : ColorResources.greyF9F,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          regularText(
                              "Select Plan",
                              variableController.arrowClick2.value == true
                                  ? ColorResources.white
                                  : ColorResources.grey9CA,
                              16),
                          Obx(
                            () => InkWell(
                              onTap: () {
                                variableController.arrowClick2.value =
                                    !variableController.arrowClick2.value;
                              },
                              child: SvgPicture.asset(
                                  variableController.arrowClick2.value == true
                                      ? Images.arrowUp
                                      : Images.arrowDownIcon,
                                  color: variableController.arrowClick2.value ==
                                          true
                                      ? ColorResources.white
                                      : ColorResources.grey9CA),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Obx(
                      () => variableController.arrowClick1.value == true
                      ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: ColorResources.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            spreadRadius: 0,
                            offset: const Offset(0, 4),
                            color: ColorResources.black.withOpacity(0.09),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: regularText(
                                "R 399 - 1.5 Gb, Unlimited Calls",
                                ColorResources.grey6B7,
                                18),
                          ),
                          const SizedBox(height: 12),
                          const Divider(
                              thickness: 1,
                              color: ColorResources.grey777),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: regularText(
                                "R 599 - 2.0 Gb, Unlimited Calls",
                                ColorResources.grey6B7,
                                18),
                          ),
                          const SizedBox(height: 12),
                          const Divider(
                              thickness: 1,
                              color: ColorResources.grey777),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: regularText(
                                "R 799 - 3.0 Gb, Unlimited Calls",
                                ColorResources.grey6B7,
                                18),
                          ),
                          const SizedBox(height: 12),
                          const Divider(
                              thickness: 1,
                              color: ColorResources.grey777),
                          const SizedBox(height: 12),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: regularText(
                                "R 999 - 5.0 Gb, Unlimited Calls",
                                ColorResources.grey6B7,
                                18),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  )
                      : const SizedBox.shrink(),
                ),
                const SizedBox(height: 16),
                Container(
                  height: 55,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: ColorResources.greyF9F,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: mediumText(
                          "Have Promocode?", ColorResources.blue1D3, 16),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: boldText("My recharges", ColorResources.grey6B7, 20),
                ),
                const SizedBox(height: 25),
                ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: allPeopleList.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage(allPeopleList[index]["image"]),
                            ),
                            Image.asset(allPeopleList[index]["image2"],
                                height: 25, width: 25),
                          ],
                        ),
                        title: boldText(allPeopleList[index]["text"],
                            ColorResources.blue1D3, 16),
                        subtitle: regularText(
                            "+233 123-4567-90", ColorResources.grey6B7, 11),
                      ),
                    ),
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
