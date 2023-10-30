import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/font_family.dart';
import 'package:ewallet/images.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        title: boldText("Add New Card", ColorResources.blue1D3, 20),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(Images.help),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boldText("Card Detail", ColorResources.blue1D3, 18),
            const SizedBox(height: 15),
            TextFormField(
              cursorColor: ColorResources.black,
              style: TextStyle(
                color: ColorResources.black,
                fontSize: 16,
                fontFamily: TextFontFamily.poppinsRegular,
              ),
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(Images.masterCard),
                ),
                hintText: "Card number",
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
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorResources.greyF9F, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: ColorResources.greyF9F, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: textField1("Expiry date"),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: textField1("CVV"),
                ),
              ],
            ),
            const SizedBox(height: 15),
            textField1("Add a nickname (Optional)"),
            const SizedBox(height: 11),
            regularText(
                "eg: Shopping Card, Mom’s Card", ColorResources.grey9CA, 14),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 52,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: ColorResources.greyC1C,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: boldText("ADD", ColorResources.white, 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
