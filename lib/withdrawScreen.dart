import 'package:ewallet/withdrawController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '/common_widget.dart';
import '/font_family.dart';
import '/images.dart';
import '/appbar.dart';


class WithdrawScreen extends StatelessWidget {
  WithdrawScreen({Key? key}) : super(key: key);
  final withdrawController = Get.put(WithdrawController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              boldText("Hey there!", Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black, 28.0),
              const SizedBox(
                width: 20,
              ),
              Image.asset(
                Images.hello,
                height: 40,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
           WorkConatiner(
            borderColor: ColorResources.blue1D3,
            padding: 15.0,
            margin: 10.0,
            containerColor: ColorResources.blue1D3,
            text:
                "Get started by adding money to your wallet so you can spend cash, buy airtime and electricity, use your virtual cards and more.",
            textColor: Theme.of(context).brightness != Brightness.light
              ?ColorResources.white
              : ColorResources.black,
            fontSize: 15.0,
            borderSize: 15.0,
          ),
          const SizedBox(
            height: 5,
          ),
          GreyConatiner(
            widget: Column(
              children: [
                Row(
                  children:  [
                    WorkConatiner(
                        borderColor: ColorResources.black,
                        containerColor: ColorResources.black,
                        text: "Currency",
                        fontSize: 12.0),
                    SizedBox(
                      width: 10,
                    ),
                    WorkConatiner(
                      containerColor: ColorResources.white,
                      text: "ZAR",
                      fontSize: 12.0,
                      borderColor: ColorResources.black,
                      textColor:ColorResources.black,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: boldText("0.00", ColorResources.black, 20.0),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                child: containerButton(() {
                  Get.bottomSheet(
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 15, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                                bottom: 25, left: 125, right: 125),
                            child: Divider(
                                thickness: 6, color: ColorResources.greyE1E),
                          ),
                          boldText("Add money", Theme.of(context).brightness != Brightness.light
                              ?ColorResources.white
                              : ColorResources.black, 20,
                              TextAlign.center),
                          boldText("100.00", Theme.of(context).brightness != Brightness.light
                              ?ColorResources.white
                              : ColorResources.black, 20,
                              TextAlign.center),
                          const SizedBox(height: 20),
                          Obx(() {
                            if (!withdrawController.tapped.value) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  // color: ColorResources.white,
                                  border: Border.all(
                                      color: ColorResources.blue1D3, width: 1),
                                ),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  leading: SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                        "assets/icons/_Group_ (3).png",
                                        height: 20,
                                      )),
                                  title: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: 'Link account ',
                                        style: TextStyle(
                                            fontFamily:
                                                TextFontFamily.poppinsBold,
                                            color: Theme.of(context).brightness != Brightness.light
                                                ?ColorResources.white
                                                : ColorResources.black,
                                            fontSize: 14),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'Recommanded',
                                            style: TextStyle(
                                              fontFamily:
                                                  TextFontFamily.poppinsBold,
                                              color: ColorResources.blue1D3,
                                              fontSize: 14,
                                            ),
                                          )
                                        ]),
                                  ),
                                  subtitle: lightText(
                                      "Linking an account securly to make payment directly from your bank. No need to log in every time.",
                                      Theme.of(context).brightness != Brightness.light
                                          ?ColorResources.white
                                          : ColorResources.black,
                                      11),
                                  trailing: Image.asset(
                                    "assets/icons/_Path_ (1).png",
                                    height: 20,
                                  ),
                                ),
                              );
                            } else {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                      color: ColorResources.black, width: 1),
                                ),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
                                  leading: Image.asset(
                                    "assets/icons/NED.png",
                                    height: 40,
                                  ),
                                  title: boldText("Cheque account",
                                      Theme.of(context).brightness != Brightness.light
                                          ?ColorResources.white
                                          : ColorResources.black, 15.0),
                                  subtitle: lightText("**** **** 1456",
                                      Theme.of(context).brightness != Brightness.light
                                          ?ColorResources.white
                                          : ColorResources.black, 15),
                                ),
                              );
                            }
                          }),
                          const SizedBox(height: 20),
                          Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border:
                                    Border.all(color: ColorResources.greyF9F),
                              ),
                              child: ListTile(
                                title: boldText(
                                    withdrawController.tapped.value
                                        ? "Link a new account"
                                        : "Add a card",
                                    Theme.of(context).brightness != Brightness.light
                                        ?ColorResources.white
                                        : ColorResources.black,
                                    16),
                                trailing:  Icon(Icons.circle_outlined,
                                    size: 25, color: Theme.of(context).brightness != Brightness.light
                                        ?ColorResources.white
                                        : ColorResources.black),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Obx(
                            () => containersButton(() {
                              withdrawController.tapped.toggle();
                            },
                                withdrawController.tapped.value
                                    ? "Confirm"
                                    : "Continue",
                                color: ColorResources.darkgrey,
                                color2: ColorResources.darkgrey),
                          )
                        ],
                      ),
                    ),
                    backgroundColor:
                        Theme.of(context).brightness == Brightness.light
                            ? ColorResources.white
                            : ColorResources.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      ),
                    ),
                  );
                }, "Add money", radius: 30.0),
              ),
              SizedBox(
                width: 150,
                child: containersButton(() {}, "Withdraw",
                    color: ColorResources.white,
                    color2: ColorResources.blue1D3,
                    radius: 30.0,
                    textColor: ColorResources.black),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          GreyConatiner(
            widget: Row(
              children: const [
                WorkConatiner(
                  containerColor: ColorResources.black,
                  text: "Transactions",
                  fontSize: 12.0,
                  borderColor: ColorResources.black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WorkConatiner extends StatelessWidget {
  const WorkConatiner(
      {Key? key,
      this.padding = 8.0,
      this.containerColor,
      this.borderColor,
      this.fontSize,
      this.textColor = ColorResources.white,
      this.text,
      this.margin = 0.0,
      this.borderSize = 8.0})
      : super(key: key);

  final padding;
  final margin;
  final containerColor;
  final borderColor;
  final fontSize;
  final borderSize;
  final textColor;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(borderSize),
        ),
        border: Border.all(color: borderColor),
      ),
      child: mediumText(text, textColor, fontSize),
    );
  }
}

class GreyConatiner extends StatelessWidget {
  const GreyConatiner({Key? key, this.widget}) : super(key: key);
  final widget;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: ColorResources.greyE1E,
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        child: widget);
  }
}
