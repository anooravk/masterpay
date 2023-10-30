import 'package:qr_scanner/qr_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../colors.dart';
import '../common_widget.dart';
import '../images.dart';


class ShowQrCodeScreen extends StatelessWidget {
   ShowQrCodeScreen({Key? key,this.code="",  this.onClose}) : super(key: key);
  final code;
  final onClose;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
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
                      border:
                          Border.all(color: ColorResources.greyE5E, width: 1),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 16,
                      ),
                    ),
                  ),
                ),
                boldText("Show QR Code", ColorResources.blue1D3, 20),
                Container(
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
                      Icons.more_horiz,
                      color: ColorResources.blue1D3,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
            mediumText("John Doe", ColorResources.blue1D3, 18),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Theme.of(context).brightness == Brightness.light
                    ? ColorResources.white
                    : ColorResources.black,
                border: Border.all(color: ColorResources.greyF9F)
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                leading: const CircleAvatar(backgroundImage:AssetImage(Images.bobImage),radius: 25,),
                title: boldText("MasterPay", ColorResources.blue1D3, 16),
                subtitle: mediumText("R12,340", ColorResources.blue1D3, 16),
                trailing: SvgPicture.asset(
                  Images.arrowDownIcon,
                  color: ColorResources.grey9CA,
                ),
              ),
            ),
            Container(
              height: 270,
              width: Get.width,
              decoration: BoxDecoration(
                // color: Theme.of(context).brightness == Brightness.light
                //     ? ColorResources.white
                //     : ColorResources.black,
                  border: Border.all(color: ColorResources.greyF9F),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25,
                    spreadRadius: 0,
                    offset: const Offset(2, 15),
                    color: ColorResources.grey6B7.withOpacity(0.06),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child:
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200,
                        child: QrImage(
                          backgroundColor:ColorResources.white,
                          data:code,
                          version:QrVersions.auto,
                        ),
                      ),
                      regularText(code.toString(), ColorResources.blue1D3, 14,TextAlign.center),
                    ],
                  ),
                ),
                // SvgPicture.asset(Images.qrCode2),
              ),
            ),
            regularText(
                "ID: johndoe >", ColorResources.blue1D3, 14),
            // InkWell(
            //   onTap: () {
            //     // Get.to( ScanQrCodeScreen());
            //   },
            //   child: Container(
            //     height: 40,
            //     width: 188,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12),
            //       color: ColorResources.greyF1F.withOpacity(0.25),
            //       boxShadow: [
            //         BoxShadow(
            //           blurRadius: 16,
            //           offset: const Offset(0, 4),
            //           spreadRadius: 0,
            //           color: ColorResources.black111.withOpacity(0.02),
            //         ),
            //       ],
            //       border: Border.all(
            //         color: ColorResources.black.withOpacity(0.06),
            //       ),
            //     ),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         SvgPicture.asset(Images.scan),
            //         const SizedBox(width: 10),
            //         mediumText("Open code Scanner", ColorResources.blue1D3, 14),
            //       ],
            //     ),
            //   ),
            // ),
            // Image.asset(Images.bhimLogo,height: 100,width: 100),
          ],
        ),
      ),
    );
  }
}
