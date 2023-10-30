import 'package:ewallet/showMall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../colors.dart';


import '../images.dart';
import '/common_widget.dart';
import '/appbar.dart';

class MallQrCode extends StatefulWidget {
  const MallQrCode({Key? key}) : super(key: key);

  @override
  State<MallQrCode> createState() => _MallQrCodeState();
}

class _MallQrCodeState extends State<MallQrCode> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool isScanCompleted = false;

  close() {
    isScanCompleted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boldText("Mall Parking", Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black, 20.0),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: Get.width,
                  child: MobileScanner(
                    allowDuplicates: true,
                    onDetect: (barcode, args) {
                      if (!isScanCompleted) {
                        String code = barcode.rawValue ?? '---';
                        isScanCompleted = true;
                        Get.to(ShowMall());
                      }
                    },
                  )),
              Image.asset(
                Images.iconMall,
                color: Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black,
                height: 60,
              ),
              SizedBox(
                width: 200,
                child: containerButton(() {
                  Get.to(ShowMall());
                }, "Scan", radius: 20.0),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
