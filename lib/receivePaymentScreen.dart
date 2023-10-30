import 'package:ewallet/home_screen.dart';
import 'package:ewallet/paymentController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../images.dart';
import '/rout_screen.dart';
import '/common_widget.dart';
import '/appbar.dart';

class ReceivePaymentScreen extends StatelessWidget {
  ReceivePaymentScreen({Key? key}) : super(key: key);
  final paymentController = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(
          onPressed: () {Get.off(RoutScreen());},
          icon:  Icon(
              Icons.arrow_back,
              color:Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {Get.to(RoutScreen());},
            icon:  Icon(
                Icons.cancel_outlined,
                color:Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black
            ),
          ),
        ],
        centerTitle: true,
        title: Image.asset(
          Theme.of(context).brightness != Brightness.light
              ? Images.gpayLog2
              : Images.gpayLog,
          height: 40,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            boldText("Receive Payment",  Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 22.0,
                TextAlign.center),
            const SizedBox(
              height: 120,
            ),
            Obx(() {
              if (paymentController.isReceived.value) {
                return Column(
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      Images.iconTick,
                      height: 170,
                    ),
                    const SizedBox(height: 20),
                    mediumText("Successful", Theme.of(context).brightness != Brightness.light
                        ?ColorResources.white
                        : ColorResources.black, 20.0,
                        TextAlign.center),
                    const SizedBox(height: 100),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Image.asset(
                      Images.iconscan,
                      color: Theme.of(context).brightness != Brightness.light
                          ?ColorResources.white
                          : ColorResources.black,
                      height: 170,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    boldText("Scan Me", Theme.of(context).brightness != Brightness.light
                        ?ColorResources.white
                        : ColorResources.black, 20.0,
                        TextAlign.center),
                    const SizedBox(
                      height: 120,
                    ),
                  ],
                );
              }
            }),
            Obx(
              () => SizedBox(
                width: 200,
                child: containerButton(
                  () {
                    paymentController.isReceived.toggle();
                  },
                  paymentController.isReceived.value ? "Complete" : "Next",
                  radius: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
