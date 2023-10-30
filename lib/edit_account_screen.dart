import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/font_family.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';


class EditAccountScreen extends StatelessWidget {
   const EditAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        title: boldText("Edit Account", ColorResources.darkgrey, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 25, right: 25),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldText("Name", ColorResources.grey6B7, 16),
                const SizedBox(height: 12),
                textField1("John Doe"),
                boldText("Mobile Number", ColorResources.grey6B7, 16),
                const SizedBox(height: 12),
                textField1("+233 123-4567-90"),
                const SizedBox(height: 25),
                boldText("Email", ColorResources.grey6B7, 16),
                const SizedBox(height: 12),
                textField1("johndoe@gmail.com"),
                const SizedBox(height: 25),
                boldText("Language", ColorResources.grey6B7, 16),
                const SizedBox(height: 12),
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
                      child: SvgPicture.asset(Images.arrowDownIcon,
                          color: ColorResources.blue1D3),
                    ),
                    hintText: "English (united States)",
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
                const SizedBox(height: 120),
                containerButton(() {}, "Save",color: ColorResources.darkgrey),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
