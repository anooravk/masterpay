
import 'package:ewallet/home_screen.dart';
import 'package:ewallet/show_qrcode_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../rout_screen.dart';
import '../colors.dart';
import '../common_widget.dart';
import '../images.dart';

// ignore: must_be_immutable
class ScanQrCodeScreen extends StatefulWidget {
  const ScanQrCodeScreen({Key? key}) : super(key: key);

  @override
  State<ScanQrCodeScreen> createState() => _ScanQrCodeScreenState();
}

class _ScanQrCodeScreenState extends State<ScanQrCodeScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // QRViewController? qrViewController;

  bool isScanCompleted=false;

  // @override
  // void reassemble() {
  //   super.reassemble();
  //   if (Platform.isAndroid) {
  //     qrViewController!.pauseCamera();
  //   }
  //   qrViewController!.resumeCamera();
  // }
  //
  // @override
  // void dispose() {
  //   qrViewController!.dispose();
    // super.dispose();
  // }
  close(){isScanCompleted=false;}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.whiteF0F,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.canvas),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(RoutScreen());
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: ColorResources.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: ColorResources.white.withOpacity(0.25),
                            width: 1),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: ColorResources.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  boldText("Scan QR Code", ColorResources.white, 20),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: ColorResources.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color: ColorResources.white.withOpacity(0.25),
                          width: 1),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.more_horiz,
                        color: ColorResources.white,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 80),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: Get.width,
                child: MobileScanner(
                  allowDuplicates: true,
                   onDetect: (barcode,args) {
                     if(!isScanCompleted){
                       String code=barcode.rawValue??'---';
                       isScanCompleted=true;
                       Get.to( ShowQrCodeScreen(code:code,onClose: close(),));
                     }
                   },
                )
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(15),
                //   child: QRView(
                //     key: qrKey,
                //     overlay: QrScannerOverlayShape(
                //       cutOutSize: MediaQuery.of(context).size.width * 0.7,
                //       borderRadius: 10,
                //       borderWidth: 10,
                //       borderColor: ColorResources.blue1D3,
                //       // overlayColor: ColorResources.black
                //     ),
                //     onQRViewCreated: (QRViewController controller) {
                //       setState(() {
                //         qrViewController = controller;
                //       });
                //     },
                //   ),
                // ),
              ),
              // SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Get.to(ShowQrCodeScreen());

                },
                child: Container(
                  height: 40,
                  width: 188,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorResources.white.withOpacity(0.25),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 16,
                        offset: const Offset(0, 4),
                        spreadRadius: 0,
                        color: ColorResources.black111.withOpacity(0.02),
                      ),
                    ],
                    border: Border.all(
                      color: ColorResources.white.withOpacity(0.06),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Images.qrCodeScan),
                      const SizedBox(width: 10),
                      mediumText(
                          "Scan QR code ready", ColorResources.white, 14),
                    ],
                  ),
                ),
              ),

              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorResources.white.withOpacity(0.25),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 16,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                      color: ColorResources.black111.withOpacity(0.02),
                    ),
                  ],
                  border: Border.all(
                    color: ColorResources.white.withOpacity(0.06),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(Images.star),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
