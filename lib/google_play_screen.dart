import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/variable_controller.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/font_family.dart';
import 'package:ewallet/images.dart';

class GooglePlayScreen extends StatelessWidget {
  GooglePlayScreen({Key? key}) : super(key: key);

  final VariableController variableController = Get.put(VariableController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      appBar: AppBar(

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
        title: boldText("Google Play", ColorResources.blue1D3, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Theme.of(context).brightness == Brightness.light
                    ? ColorResources.white
                    : ColorResources.black,
                border: Border.all(color: ColorResources.greyE5E, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(Images.googlePlay, height: 50, width: 50),
                        const SizedBox(width: 6),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            boldText("Google Play", ColorResources.blue1D3, 16),
                            regularText(
                                "Recharge Code", ColorResources.grey6B7, 12),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Divider(thickness: 1, color: ColorResources.greyE5E),
                    const SizedBox(height: 12),
                    regularText(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been",
                        ColorResources.grey6B7,
                        12),
                    const SizedBox(height: 10),
                    Obx(
                      () => variableController.arrowClick3.value == true
                          ? regularText(
                              "been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in",
                              ColorResources.grey6B7,
                              12)
                          : const SizedBox.shrink(),
                    ),
                    Center(
                      child: Obx(
                        () => InkWell(
                          onTap: () {
                            variableController.arrowClick3.value =
                                !variableController.arrowClick3.value;
                          },
                          child: SvgPicture.asset(
                            variableController.arrowClick3.value == true
                                ? Images.arrowUp
                                : Images.arrowDownIcon,
                            color: ColorResources.blue1D3,
                            height: 10,
                            width: 10,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 22),
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
                          child: boldText("R", ColorResources.blue1D3, 30),
                        ),
                        hintText: "400",
                        hintStyle: TextStyle(
                          color: ColorResources.blue1D3,
                          fontSize: 20,
                          fontFamily: TextFontFamily.poppinsMedium,
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
                  ],
                ),
              ),
            ),
            const Spacer(),
            containerButton(() {}, "Pay"),
          ],
        ),
      ),
    );
  }
}
