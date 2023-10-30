import 'package:flutter/cupertino.dart';
import 'package:ewallet/common_widget.dart';
import 'package:get/get.dart';
import '../history_screen.dart';
import '../images.dart';
import '../airtimeScreen.dart';
import '../electricityScreen.dart';
import '../mallQr.dart';
import '../withdrawScreen.dart';
import '/bank_balance_screen.dart';
import '/enter_recipient_screen.dart';
import '/voucher_screen.dart';
import '/self_transfer_screen.dart';

class PayingServices extends StatelessWidget {
  PayingServices({Key? key}) : super(key: key);
  final List<Map> servicesList = [
    {
      "image": Images.iconWalletLight,
      "text": "Wallet",
      "onTap": () { Get.to( WithdrawScreen());},
    },
    {
      "image": Images.iconTransfer,
      "text": "Transfer",
      "onTap": () {Get.to(const SelfTrasferScreen());},
    },
    {
      "image": Images.iconPrepaidLight,
      "text": "Prepaids",
      "onTap": () {Get.to(AirtimeBundleScreen());},
    },
    {
      "image": Images.iconDepositLight,
      "text": "Deposit",
      "onTap": () { Get.to(const EnterRecipientDetailScreen());},
    },
    {
      "image": Images.iconMarketLight,
      "text": "Market",
      "onTap": () {Get.to(VoucherScreen());},
    },
    {
      "image": Images.iconParkingLight,
      "text": "Mall Parking",
      "onTap": () {Get.to(MallQrCode());},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => GridView.count(
              childAspectRatio: 1.5,
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 18,
              mainAxisSpacing: 20,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                  servicesList.length,
                  (index) => commonCont(
                      servicesList[index]["image"],
                      servicesList[index]["text"],
                      servicesList[index]["onTap"],
                      context)).toList(),
            ),
    );
  }
}
