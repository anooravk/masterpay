import 'package:ewallet/addNewCardScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ewallet/add_new_card_screen.dart';
import 'package:ewallet/colors.dart';
import 'package:ewallet/common_widget.dart';
import 'package:ewallet/images.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

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
        title: boldText("Payment methods", ColorResources.blue1D3, 20),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              width: Get.width,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        regularText(
                            "Credit/Debit Cards (1)", ColorResources.grey6B7, 14),
                        InkWell(
                          onTap: (){
                            Get.to(AddNewCardScreens());
                          },
                          child:  mediumText("+  Add Card", ColorResources.blue1D3, 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 130,
                      width: 222,
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? ColorResources.white
                            : ColorResources.black,
                        border: Border.all(color: ColorResources.greyF9F),
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage(Images.cardd),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            boldText("Bank Account Info", ColorResources.blue1D3, 16),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: ColorResources.greyF3F, width: 1),
                // color: ColorResources.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 25),
                        boldText("Card Holder Name", ColorResources.grey6B7, 14),
                        const SizedBox(height: 25),
                        boldText("Account Number", ColorResources.grey6B7, 14),
                        const SizedBox(height: 25),
                        boldText("Valid From", ColorResources.grey6B7, 14),
                        const SizedBox(height: 25),
                        boldText("Valid Thru", ColorResources.grey6B7, 14),
                        const SizedBox(height: 25),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 25),
                        boldText("John Doe", ColorResources.blue1D3, 14),
                        const SizedBox(height: 25),
                        boldText("1234567890", ColorResources.blue1D3, 14),
                        const SizedBox(height: 25),
                        boldText("09/21", ColorResources.blue1D3, 14),
                        const SizedBox(height: 25),
                        boldText("09/26",
                            ColorResources.blue1D3, 14),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // InkWell(
            //   onTap: () {
            //     Get.to(AddNewCardScreen());
            //   },
            //   child: Container(
            //     width: Get.width,
            //     decoration: BoxDecoration(
            //       color: Theme.of(context).brightness == Brightness.light
            //           ? ColorResources.white
            //           : ColorResources.black,
            //       borderRadius: BorderRadius.circular(14),
            //       border: Border.all(color: ColorResources.greyF9F),
            //       boxShadow: [
            //         BoxShadow(
            //           blurRadius: 2,
            //           spreadRadius: 0,
            //           offset: Offset(0, 0),
            //           color: ColorResources.black.withOpacity(0.25),
            //         ),
            //       ],
            //     ),
            //     child: Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           regularText(
            //               "Credit/Debit Cards (0)", ColorResources.grey6B7, 14),
            //           SizedBox(height: 15),
            //           Container(
            //             height: 130,
            //             width: 222,
            //             decoration: BoxDecoration(
            //               color: Theme.of(context).brightness == Brightness.light
            //                   ? ColorResources.white
            //                   : ColorResources.black,
            //               border: Border.all(color: ColorResources.greyF9F),
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                 image: AssetImage(Images.addCard),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
