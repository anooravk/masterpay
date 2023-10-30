//
// import 'dart:io';
// import 'package:country_picker/country_picker.dart';
// import 'package:ewallet/WelcomeScreen/welcomecont.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// import '../Utils/colors.dart';
// import '../Utils/common_widget.dart';
// import '../Utils/font_family.dart';
// import '../Utils/images.dart';
// import '../VerificationScreen/verification_screen.dart';
// import '../main.dart';
//
// class WelcomeScreen extends StatelessWidget {
//   WelcomeScreen({Key? key}) : super(key: key);
//
//   final controller = Get.put(WelcomeController());
//   final emailController = TextEditingController();
//   final phoneController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//       padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
//       child: ScrollConfiguration(
//         behavior: MyBehavior(),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Align(
//                 alignment: Alignment.topRight,
//                 child: InkWell(
//                   onTap: () {},
//                   child: Container(
//                     height: 35,
//                     width: 140,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 8),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Icon(Icons.language,
//                               size: 18, color: ColorResources.blue1D3),
//                           regularText(
//                               "English (US)", ColorResources.grey9CA, 14),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 60),
//               Center(child: SvgPicture.asset(Images.welcomeImage)),
//               const SizedBox(height: 50),
//               boldText("Welcome to SpotPay", ColorResources.blue1D3, 24),
//               const SizedBox(height: 7),
//               Obx(
//                 () => lightText(
//                     controller.isPhone.value
//                         ? "Please enter your Phone Number or "
//                         : "Please enter your Email Address or ",
//                     ColorResources.grey6B7,
//                     16),
//               ),
//               Obx(() {
//                 return InkWell(
//                   onTap: () {
//                     controller.isPhone.toggle();
//                   },
//                   child: Text(
//                     controller.isPhone.value
//                         ? "continue with Email"
//                         : "continue with Phone Number",
//                     style: TextStyle(
//                         decoration: TextDecoration.underline,
//                         fontFamily: TextFontFamily.poppinsMedium,
//                         fontSize: 16,
//                         color: ColorResources.grey6B7,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 );
//               }),
//               const SizedBox(height: 20),
//               Obx(() {
//                 if (controller.isPhone.value)
//                   return Container(
//                       height: controller.pvalid.value?Get.height / 15:Get.height/11,
//                       child: Row(mainAxisSize: MainAxisSize.min, children: [
//                          InkWell(
//                                 onTap: () {
//                                   showCountryPicker(
//                                     context: context,
//                                     exclude: <String>['KN', 'MF'],
//                                     favorite: <String>['SE'],
//                                     showPhoneCode: true,
//                                     onSelect: (Country country) {
//                                       controller.selectedCode.value =
//                                           country.phoneCode;
//                                       print(country.phoneCode);
//                                     },
//                                     countryListTheme: CountryListThemeData(
//                                       borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(40.0),
//                                         topRight: Radius.circular(40.0),
//                                       ),
//                                       inputDecoration: InputDecoration(
//                                         hintText: 'Search',
//                                         prefixIcon: Padding(
//                                           padding: const EdgeInsets.all(15),
//                                           child:
//                                               SvgPicture.asset(Images.search),
//                                         ),
//                                         border: OutlineInputBorder(
//                                           borderSide: BorderSide(
//                                             color: const Color(0xFF8C98A8)
//                                                 .withOpacity(0.2),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   );
//                                 },
//                                 child: Column(
//                                   children: [
//                                     Obx(()=>
//                                        Container(
//                                         height: Get.height/15,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(16),
//                                             bottomLeft: Radius.circular(16),
//                                           ),
//                                           border: Border.all(
//                                               color:
//                                                       controller.pvalid.value
//                                                   ? ColorResources.greyF9F
//                                                   : Colors.red[100]!,
//                                               width: 2),
//                                           color: ColorResources.greyF9F,
//                                         ),
//                                         child: Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 20),
//                                           child: Row(
//                                             children: [
//                                               mediumText(
//                                                   "+${controller.selectedCode.value} ",
//                                                   ColorResources.blue1D3,
//                                                   18),
//                                               const SizedBox(width: 8),
//                                               SvgPicture.asset(
//                                                 Images.arrowDownIcon,
//                                               ),
//                                               const SizedBox(width: 4),
//                                               const SizedBox(
//                                                 height: 30,
//                                                 child: VerticalDivider(
//                                                   color: ColorResources.grey6B7,
//                                                   thickness: 1,
//                                                   indent: 5,
//                                                   endIndent: 2,
//                                                   width: 20,
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                         //     controller.pvalid.value
//                                         // ? SizedBox.shrink()
//                                         // : SizedBox(
//                                         //     height: 50,
//                                         //   )
//                                   ],
//                                 ),
//                               ),
//                         SizedBox(
//                           width: Get.width / 1.65,
//                           child: Form(
//                             key: controller.welcomeKey1,
//                             child: TextFormField(
//                               controller: phoneController,
//                               onChanged: (val) {
//                                  if (!GetUtils.isPhoneNumber(val))
//                                  controller.updatePValid(false);
//                                  else
//                                    controller.updatePValid(true);
//                               },
//                               autovalidateMode:
//                                   AutovalidateMode.onUserInteraction,
//                               validator: (value) {
//                                 if (value!.isEmpty) {
//                                   return 'Please enter a phone number';
//                                 } else if (!GetUtils.isPhoneNumber(value)) {
//                                   controller.updatePValid(false);
//                                   return 'Invalid Phone Number!';
//                                 }
//                                 controller.updatePValid(true);
//                                 return null;
//                               },
//                               cursorColor: ColorResources.blue1D3,
//                               style: TextStyle(
//                                 color: ColorResources.black,
//                                 fontSize: 18,
//                                 fontFamily: TextFontFamily.poppinsRegular,
//                               ),
//                               keyboardType: TextInputType.text,
//                               decoration: InputDecoration(
//                                 errorStyle: TextStyle(
//                                     fontFamily: TextFontFamily.poppinsLight,
//                                     fontSize: 8),
//                                 hintText: "Enter Phone Number",
//                                 hintStyle: TextStyle(
//                                   color: ColorResources.grey9CA,
//                                   fontSize: 18,
//                                   fontFamily: TextFontFamily.poppinsRegular,
//                                 ),
//                                 filled: true,
//                                 fillColor: ColorResources.greyF9F,
//                                 border: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         color: ColorResources.greyF9F,
//                                         width: 1),
//                                     borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(16),
//                                         bottomRight: Radius.circular(16))),
//                                 enabledBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         color: ColorResources.greyF9F,
//                                         width: 1),
//                                     borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(16),
//                                         bottomRight: Radius.circular(16))),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         color: ColorResources.greyF9F,
//                                         width: 1),
//                                     borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(16),
//                                         bottomRight: Radius.circular(16))),
//                                 errorBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         color: Colors.red, width: 1),
//                                     borderRadius: BorderRadius.only(
//                                         topRight: Radius.circular(16),
//                                         bottomRight: Radius.circular(16))),
//                               ),
//                             ),
//                           ),
//                         )
//                       ]));
//                 else
//                   return SizedBox(
//                     width: Get.width / 1.17,
//                     child: Form(
//                       key: controller.welcomeKey2,
//                       child: TextFormField(
//                         controller: emailController,
//                         onChanged: (val) {
//                           if (!GetUtils.isEmail(val))
//                             controller.updateEValid(false);
//                           else
//                             controller.updateEValid(true);
//                         },
//                         autovalidateMode:
//                         AutovalidateMode.onUserInteraction,
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Please enter an email';
//                           } else if (!GetUtils.isEmail(value)) {
//                             controller.updateEValid(false);
//                             return 'Invalid Email Address!';
//                           }
//                           controller.updateEValid(true);
//                           return null;
//                         },
//                         cursorColor: ColorResources.blue1D3,
//                         style: TextStyle(
//                           color: ColorResources.black,
//                           fontSize: 18,
//                           fontFamily: TextFontFamily.poppinsRegular,
//                         ),
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                           errorStyle: TextStyle(
//                               fontFamily: TextFontFamily.poppinsLight,
//                               fontSize: 8),
//                           hintText: "Enter Email Address",
//                           hintStyle: TextStyle(
//                             color: ColorResources.grey9CA,
//                             fontSize: 18,
//                             fontFamily: TextFontFamily.poppinsRegular,
//                           ),
//                           filled: true,
//                           fillColor: ColorResources.greyF9F,
//                           border: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                   color: ColorResources.greyF9F,
//                                   width: 1),
//                               borderRadius: BorderRadius.all(Radius.circular(16)),),
//                           enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                   color: ColorResources.greyF9F,
//                                   width: 1),
//                             borderRadius: BorderRadius.all(Radius.circular(16)),),
//                           focusedBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                   color: ColorResources.greyF9F,
//                                   width: 1),
//                             borderRadius: BorderRadius.all(Radius.circular(16)),),
//                           errorBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                   color: Colors.red, width: 1),
//                             borderRadius: BorderRadius.all(Radius.circular(16)),),
//                         ),
//                       ),
//                     ),
//                   ) ;
//               }),
//               const SizedBox(height: 55),
//               containerButton(() {
//                 Get.to(VerificationScreen(
//                   isPhone: controller.isPhone.value,
//                 ));
//               }, "Next"),
//               const SizedBox(height: 55),
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }



import 'package:country_picker/country_picker.dart';
import 'package:ewallet/verification_screen.dart';
import 'package:ewallet/welcomecont.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


import '../../colors.dart';

import '../../images.dart';

import '../../main.dart';
import '../common_widget.dart';
import '../font_family.dart';
import 'appbar.dart';


class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  final controller = Get.put(WelcomeController());
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppBar(),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Center(child: Image.asset(Images.iconVerify,height: 190,)),
              const SizedBox(height: 20,),
              Obx(
                    () => boldText(
                    controller.isPhone.value
                        ? "Please enter your Phone Number "
                        : "Please enter your Email Address ",
                        Theme.of(context).brightness != Brightness.light
                            ?ColorResources.white
                            : ColorResources.black,
                    16,
                    TextAlign.center),
              ),
              SizedBox(
                height: 260,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        height: 200,
                        width: Get.width / 1.11,
                        decoration: BoxDecoration(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                            border:
                            Border.all(color: ColorResources.greyF9F)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 25),
                          child: Stack(
                            fit: StackFit.loose,
                            alignment: AlignmentDirectional.center,
                            children: [
                              Positioned(
                                top: 30,
                                child: Obx(() {
                                  if (controller.isPhone.value) {
                                    return SizedBox(
                                        height: controller.pvalid.value
                                            ? Get.height / 15
                                            : Get.height / 11,
                                        child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  showCountryPicker(
                                                    context: context,
                                                    exclude: <String>[
                                                      'KN',
                                                      'MF'
                                                    ],
                                                    favorite: <String>['SE'],
                                                    showPhoneCode: true,
                                                    onSelect:
                                                        (Country country) {
                                                      controller.selectedCode
                                                          .value =
                                                          country.phoneCode;
                                                      debugPrint(
                                                          country.phoneCode);
                                                    },
                                                    countryListTheme:
                                                    CountryListThemeData(
                                                      borderRadius:
                                                      const BorderRadius
                                                          .only(
                                                        topLeft:
                                                        Radius.circular(
                                                            40.0),
                                                        topRight:
                                                        Radius.circular(
                                                            40.0),
                                                      ),
                                                      inputDecoration:
                                                      InputDecoration(
                                                        hintText: 'Search',
                                                        prefixIcon: Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(15),
                                                          child: SvgPicture
                                                              .asset(Images
                                                              .search),
                                                        ),
                                                        border:
                                                        OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                            color: const Color(
                                                                0xFF8C98A8)
                                                                .withOpacity(
                                                                0.2),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Column(
                                                  children: [
                                                    Obx(
                                                          () => Container(
                                                        height:
                                                        Get.height / 15,
                                                        decoration:
                                                        BoxDecoration(
                                                          borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                            topLeft: Radius
                                                                .circular(20),
                                                            bottomLeft: Radius
                                                                .circular(20),
                                                          ),
                                                          border: Border.all(
                                                            color: controller
                                                                .pvalid
                                                                .value
                                                                ? ColorResources
                                                                .greyE1E
                                                                : Colors.red[
                                                            100]!,
                                                          ),
                                                          color:
                                                          ColorResources
                                                              .greyF9F,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .only(
                                                              left: 20),
                                                          child: Row(
                                                            children: [
                                                              boldText(
                                                                  "(+${controller.selectedCode.value}) ",
                                                                  ColorResources
                                                                      .blue1D3,
                                                                  14),
                                                              const SizedBox(
                                                                  width: 8),
                                                              SvgPicture
                                                                  .asset(
                                                                Images
                                                                    .arrowDownIcon,
                                                                color: ColorResources
                                                                    .blue1D3,
                                                              ),
                                                              const SizedBox(
                                                                  width: 8),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: Get.width / 1.65,
                                                child: Form(
                                                  key: controller.welcomeKey1,
                                                  child: TextFormField(
                                                    controller:
                                                    phoneController,
                                                    onChanged: (val) {
                                                      if (!GetUtils
                                                          .isPhoneNumber(val)) {
                                                        controller
                                                            .updatePValid(
                                                            false);
                                                      } else {
                                                        controller
                                                            .updatePValid(
                                                            true);
                                                      }
                                                    },
                                                    autovalidateMode:
                                                    AutovalidateMode
                                                        .onUserInteraction,
                                                    validator: (value) {
                                                      if (value!.isEmpty) {
                                                        return 'Please enter a phone number';
                                                      } else if (!GetUtils
                                                          .isPhoneNumber(
                                                          value)) {
                                                        controller
                                                            .updatePValid(
                                                            false);
                                                        return 'Invalid Phone Number!';
                                                      }
                                                      controller
                                                          .updatePValid(true);
                                                      return null;
                                                    },
                                                    cursorColor:
                                                    ColorResources
                                                        .blue1D3,
                                                    style: TextStyle(
                                                      color: Theme.of(context).brightness != Brightness.light
                                                          ?ColorResources.white
                                                          : ColorResources.black,
                                                      fontSize: 18,
                                                      fontFamily:
                                                      TextFontFamily
                                                          .poppinsRegular,
                                                    ),
                                                    keyboardType:
                                                    TextInputType.text,
                                                    decoration:
                                                    InputDecoration(
                                                      errorStyle: TextStyle(
                                                          fontFamily:
                                                          TextFontFamily
                                                              .poppinsLight,
                                                          fontSize: 8),
                                                      hintText:
                                                      "Enter Phone Number",
                                                      hintStyle: TextStyle(
                                                        color: ColorResources
                                                            .grey9CA,
                                                        fontSize: 18,
                                                        fontFamily:
                                                        TextFontFamily
                                                            .poppinsRegular,
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                      ColorResources
                                                          .greyF9F,
                                                      border: const OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                              color: ColorResources
                                                                  .greyE1E,
                                                              width: 1),
                                                          borderRadius: BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(
                                                                  20),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                  20))),
                                                      enabledBorder: const OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                              color: ColorResources
                                                                  .greyE1E,
                                                              width: 1),
                                                          borderRadius: BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(
                                                                  20),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                  20))),
                                                      focusedBorder: const OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                              color: ColorResources
                                                                  .greyE1E,
                                                              width: 1),
                                                          borderRadius: BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(
                                                                  20),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                  20))),
                                                      errorBorder: const OutlineInputBorder(
                                                          borderSide:
                                                          BorderSide(
                                                              color: Colors
                                                                  .red,
                                                              width: 1),
                                                          borderRadius: BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(
                                                                  20),
                                                              bottomRight: Radius
                                                                  .circular(
                                                                  20))),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ]));
                                  } else {
                                    return SizedBox(
                                      width: Get.width / 1.17,
                                      child: Form(
                                        key: controller.welcomeKey2,
                                        child: TextFormField(
                                          controller: emailController,
                                          onChanged: (val) {
                                            if (!GetUtils.isEmail(val)) {
                                              controller.updateEValid(false);
                                            } else {
                                              controller.updateEValid(true);
                                            }
                                          },
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Please enter an email';
                                            } else if (!GetUtils.isEmail(
                                                value)) {
                                              controller.updateEValid(false);
                                              return 'Invalid Email Address!';
                                            }
                                            controller.updateEValid(true);
                                            return null;
                                          },
                                          cursorColor: ColorResources.blue1D3,
                                          style: TextStyle(
                                            color: Theme.of(context).brightness != Brightness.light
                                                ?ColorResources.white
                                                : ColorResources.black,
                                            fontSize: 18,
                                            fontFamily:
                                            TextFontFamily.poppinsRegular,
                                          ),
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            errorStyle: TextStyle(
                                                fontFamily: TextFontFamily
                                                    .poppinsLight,
                                                fontSize: 8),
                                            hintText: "Enter Email Address",
                                            hintStyle: TextStyle(
                                              color: ColorResources.grey9CA,
                                              fontSize: 18,
                                              fontFamily: TextFontFamily
                                                  .poppinsRegular,
                                            ),
                                            filled: true,
                                            fillColor: ColorResources.greyF9F,
                                            border: const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                  ColorResources.greyF9F,
                                                  width: 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                            ),
                                            enabledBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                  ColorResources.greyF9F,
                                                  width: 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                            ),
                                            focusedBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color:
                                                  ColorResources.greyF9F,
                                                  width: 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                            ),
                                            errorBorder: const OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.red,
                                                  width: 1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                }),
                              ),
                              Positioned(
                                top: 110,
                                child: Obx(() {
                                  return colorfulText(
                                      plainText: '...or register using ',
                                      coloredText: !controller.isPhone.value
                                          ? 'Phone'
                                          : 'Email',
                                      onTap: () {
                                        controller.isPhone.toggle();
                                      },context: context);
                                }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 210,
                        left: 30,
                        right: 30,
                        child: SizedBox(
                          width: 300,
                          child: containerButton(() {
                            Get.to(VerificationScreen(isPhone: true,));
                          }, "Next Step",color: ColorResources.darkgrey),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              colorfulText(
                  plainText: 'I accept the ',
                  coloredText: 'Terms & Conditions',
                  onTap: () {},context: context)
            ],
          ),
        ),
      ),
    );
  }
}
