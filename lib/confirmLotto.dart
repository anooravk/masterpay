import 'package:flutter/material.dart';


import '../colors.dart';
import '../common_widget.dart';
import 'appbar.dart';



class ConfirmLotto extends StatelessWidget {
  const ConfirmLotto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child:  boldText("Please confirm", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 18.0),),
            boldText("Play", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 16.0),
            lightText("LOTTO QuickPick", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 16.0),
            const SizedBox(height: 20,),
            lightText("Amount \nR10.00", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 16.0),
            const SizedBox(height: 20,),
            lightText("From account \nMasterPay Wallet", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 16.0),
            const SizedBox(height: 20,),
            lightText("By confirming you accept the T’s and C’s which can be found by contacting MasterPay or visiting www.masterpay.co.za", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 16.0),
            const SizedBox(height: 20,),
            lightText("Once the LOTTO transection has been confirmed, the ticket cannot be cancelled", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 16.0),
            const SizedBox(height: 100,),
            containerButton((){}, "Confirm",radius: 30.0)
          ],
        ),
      ),
    );
  }
}
