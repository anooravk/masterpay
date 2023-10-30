// import 'package:ewallet/WelcomeScreen/welcomecont.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
//
// import '../RoutScreen/rout_screen.dart';
// import '../Utils/colors.dart';
// import '../Utils/common_widget.dart';
// import '../Utils/font_family.dart';
//
//
// class VerificationScreen extends StatelessWidget {
//   VerificationScreen({Key? key, this.isPhone}) : super(key: key);
//   final isPhone;
//   final TextEditingController _pinPutController = TextEditingController();
//   final FocusNode _pinPutFocusNode = FocusNode();
//   final welcomeController=Get.put(WelcomeController());
//
//   BoxDecoration get _pinPutDecoration {
//     return BoxDecoration(
//       borderRadius: BorderRadius.circular(12),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: ColorResources.white,
//       resizeToAvoidBottomInset: false,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 50),
//             InkWell(
//               onTap: () {
//                 Get.back();
//               },
//               child: Container(
//                 height: 40,
//                 width: 40,
//                 decoration: BoxDecoration(
//                   color: ColorResources.white,
//                   borderRadius: BorderRadius.circular(12),
//                   border: Border.all(color: ColorResources.greyE5E, width: 1),
//                 ),
//                 child: const Center(
//                   child: Icon(
//                     Icons.arrow_back_ios_outlined,
//                     color: ColorResources.black,
//                     size: 16,
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),
//             boldText("Verify it’s you", ColorResources.blue1D3, 24),
//             const SizedBox(height: 12),
//              InkWell(
//              onTap:(){},
//             child: mediumText(
//                 isPhone ? "We sent a code at +27 *** ****90 . Enter it here to verify your identity":"We sent a code at ar****@gmail.com. Enter it here to verify your identity",
//                 ColorResources.grey9CA,
//                 16),),
//             const SizedBox(height: 27),
//             PinPut(
//               fieldsCount: 5,
//               textStyle: TextStyle(
//                 fontFamily: TextFontFamily.poppinsBold,
//                 fontSize: 24,
//                 color: ColorResources.blue1D3,
//               ),
//               // cursorColor: ColorResources.orangeF97,
//               eachFieldHeight: 55,
//               eachFieldWidth: 55,
//               focusNode: _pinPutFocusNode,
//               controller: _pinPutController,
//               submittedFieldDecoration: _pinPutDecoration.copyWith(
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(
//                   color: ColorResources.blue1D3,
//                 ),
//                 color: ColorResources.greyF9F,
//               ),
//               selectedFieldDecoration: _pinPutDecoration.copyWith(
//                 borderRadius: BorderRadius.circular(12),
//                 // border: Border.all(
//                 //   color: ColorResources.blue1D3,
//                 // ),
//                 color: ColorResources.greyF9F,
//               ),
//               followingFieldDecoration: _pinPutDecoration.copyWith(
//                 borderRadius: BorderRadius.circular(12),
//                 // border: Border.all(
//                 //   color: ColorResources.blue1D3,
//                 // ),
//                 color: ColorResources.greyF9F,
//               ),
//               disabledDecoration: _pinPutDecoration.copyWith(
//                 borderRadius: BorderRadius.circular(12),
//                 color: ColorResources.greyF9F,
//                 border: Border.all(
//                   color: ColorResources.blue1D3,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 32),
//             Center(
//               child: boldText("Resend Code", ColorResources.green1DA, 16),
//             ),
//             const SizedBox(height: 65),
//             containerButton(() {
//               Get.to(RoutScreen());
//             }, "CONTINUE"),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:ewallet/pinput.dart';
import 'package:ewallet/welcomecont.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../rout_screen.dart';
import '../colors.dart';

import '../common_widget.dart';
import '../images.dart';
import '../appbar.dart';


class VerificationScreen extends StatelessWidget {
  VerificationScreen({Key? key, this.isPhone = true}) : super(key: key);
  final isPhone;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final welcomeController = Get.put(WelcomeController());

  BoxDecoration get _pinPutDecoration {
    return const BoxDecoration(
      border: Border(
        bottom: BorderSide(width: 5, color: ColorResources.darkgrey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Image.asset(
              Images.iconTick,
              height: 170,
            ),
            const SizedBox(height: 30),
            boldText("Verify it’s you", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 24),
            const SizedBox(height: 12),
            InkWell(
              onTap: () {},
              child: mediumText(
                  isPhone
                      ? "We sent a code at +233 *** ****90 . Enter it here to verify your identity"
                      : "We sent a code at ar****@gmail.com. Enter it here to verify your identity",
                  ColorResources.grey9CA,
                  16,
                  TextAlign.center),
            ),
            const SizedBox(height: 27),
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                        color: ColorResources.greyE5E,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: OnlyBottomCursor()),
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 28,
                    right: 28,
                    child: SizedBox(
                      width: 300,
                      child: containerButton(() {
                        Get.to(RoutScreen());
                        // Get.to(VerificationScreen(isPhone: false,));
                      }, "Next Step", radius: 20.0,color: ColorResources.darkgrey),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            colorfulText(
                plainText: "Didn't Receive Anything? ",
                coloredText: 'Resend',
                onTap: () {},context: context),
          ],
        ),
      ),
    );
  }
}