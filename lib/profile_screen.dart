import 'package:ewallet/personal_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ewallet/payment_methd_screen.dart';
import 'package:ewallet/select_bank_screen.dart';
import 'package:ewallet/setting_screen.dart';
import 'package:ewallet/show_qrcode_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';
import 'package:ewallet/main.dart';
import 'package:share_plus/share_plus.dart';

import '../welcomecont.dart';
import '../selectLotto.dart';
import '../prefs.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final List<Map> paymentMethodList = [
    {
      "image": Images.cardd,
    },
    {
      "image": Images.cardd,
    },
  ];
  final welcomePageController= Get.find<WelcomeController>();
  String code="abcd5j";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorResources.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                boldText("Profile", ColorResources.darkgrey, 20),
                const SizedBox(height: 18),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? ColorResources.white
                          : ColorResources.black,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: ColorResources.greyF9F),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 0,
                          offset: const Offset(0, 0),
                          color: ColorResources.black.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: (){
                        Get.to( PersonalInfoScreen());
                      },
                      child: Column(
                        children: [
                          ListTile(
                            leading: Stack(
                              children: [
                                const CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage(Images.johnDeo),
                                ),
                                Positioned(
                                    top: 20,
                                    left: 40,
                                    child: Image.asset(Images.qrCodeImage,
                                        height: 40, width: 40)),
                              ],
                            ),
                            contentPadding: const EdgeInsets.only(top: 15, left: 10),
                            title: boldText("John Doe", ColorResources.blue1D3, 20),
                            subtitle: regularText(
                                "+233 123-4567-90", ColorResources.grey6B7, 14),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 40,
                            width: Get.width,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14),
                              ),
                                color: Theme.of(context).brightness == Brightness.light
                                    ? ColorResources.white
                                    : ColorResources.black,
                              border: Border.all(color: ColorResources.greyF9F)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Images.rewardsEarnedImage),
                                const SizedBox(width: 10),
                                boldText("R 182", ColorResources.darkgrey, 16),
                                const SizedBox(width: 6),
                                regularText(
                                    "Rewards Earned", ColorResources.grey6B7, 12),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 2),
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? ColorResources.white
                          : ColorResources.black,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: boldText(
                              "Payment Methods", ColorResources.darkgrey, 18),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: regularText(
                              "Linked Cards", ColorResources.blue1D3, 14),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 130,
                          width: Get.width,
                          child: ScrollConfiguration(
                            behavior: MyBehavior(),
                            child: ListView.builder(
                              padding: const EdgeInsets.only(left: 15, right: 5),
                              shrinkWrap: true,
                              itemCount: paymentMethodList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(Get.to(const SelectBankScreen()));
                                  },
                                  child: Container(
                                    height: 130,
                                    width: 222,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            paymentMethodList[index]["image"]),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Get.to(const PaymentMethodScreen());
                          },
                          child: Container(
                            height: 40,
                            width: Get.width,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14),
                              ),
                              color: ColorResources.whiteE1E,
                            ),
                            child: Center(
                              child: mediumText("View All Payment Methods  >",
                                  ColorResources.darkgrey, 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.to(SelectLotto());
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(Images.phoneTransfer,color: ColorResources.darkgrey,),
                      const SizedBox(width: 15),
                      mediumText("Lotto", ColorResources.darkgrey, 16),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    SvgPicture.asset(Images.gift,color: ColorResources.darkgrey,),
                    const SizedBox(width: 13),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        boldText("Invite friends, get rewards",
                            ColorResources.darkgrey, 12),
                        const SizedBox(height: 6),
                        Row(
                          children: [
                            regularText(
                                "Share this code", ColorResources.grey777, 12),
                            const SizedBox(width: 5),
                            boldText(code, ColorResources.blue1D3, 12),
                            const SizedBox(width: 5),
                            const Icon(Icons.copy,
                                color: ColorResources.blue1D3, size: 15),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: ()async{
                          await Share.share('Invite friends & get rewards,share this code $code');
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: boldText("Share", ColorResources.green1B7, 14),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Get.to(SettingScreen());
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(Images.settings,color: ColorResources.darkgrey,),
                      const SizedBox(width: 15),
                      mediumText("Settings", ColorResources.darkgrey, 16),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    SvgPicture.asset(Images.help,color: ColorResources.darkgrey,),
                    const SizedBox(width: 15),
                    mediumText("Help and feedback", ColorResources.darkgrey, 16),
                  ],
                ),

                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Wrap(
                      children: [
                        const Icon(Icons.palette_outlined,color: ColorResources.darkgrey,),
                        const SizedBox(width: 15),
                        mediumText("Dark Mode", ColorResources.darkgrey, 16),
                      ],
                    ),
                    const SizedBox(width: 15),
                    ObxValue(
                          (data) => Switch(
                            activeColor: ColorResources.darkgrey,
                            inactiveTrackColor: ColorResources.darkgrey.withOpacity(0.2),
                        inactiveThumbColor: ColorResources.darkgrey,
                        value: welcomePageController.isLightTheme.value,
                        onChanged: (val) {
                          welcomePageController.isLightTheme.value = val;
                          Get.changeThemeMode(
                            welcomePageController.isLightTheme.value ?  ThemeMode.dark:ThemeMode.light ,
                          );
                          SharedPrefs().saveThemeStatus(key: "theme",value: val);
                        },
                      ),
                      false.obs,
                    ),
                  ],
                ),
                const SizedBox(height: 130),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
