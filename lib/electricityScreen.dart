import 'package:flutter/material.dart';


import '../colors.dart';

import '../images.dart';
import '/common_widget.dart';
import '/appbar.dart';

class ElectricityScreen extends StatefulWidget {
  const ElectricityScreen({Key? key}) : super(key: key);

  @override
  State<ElectricityScreen> createState() => _ElectricityScreenState();
}

class _ElectricityScreenState extends State<ElectricityScreen> {
  final controller = TextEditingController();

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
            Center(
              child: boldText(
                  "Electricity", Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black,  18.0, TextAlign.center),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SpecificCol(
                    heading: "From",
                    imgPath: Images.iconWalletLight,
                    subtitle: "MasterPay Wallet\nR520 Avail"),
                SpecificCol(
                    heading: "Type",
                    imgPath: Images.iconWalletLight,
                    subtitle: "Fixed Amount R20-R5000 Voucher",
                    noSubtitle: true),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            lightText("\t\t\t\t\t\tMeter Number", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 15.0,
                TextAlign.center),
            const SizedBox(
              height: 3,
            ),
            CustomTextField(controller:controller,hint: "\t\t\tMeter number"),
            const SizedBox(
              height: 20,
            ),
            lightText("\t\t\t\t\t\tRecharge Amount",Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 15.0,
                TextAlign.center),
            const SizedBox(
              height: 3,
            ),
            CustomTextField(controller:controller, hint:"\t\t\tRecharge Amount"),
            const SizedBox(
              height: 20,
            ),
            lightText("\t\t\t\t\t\tCellphone Number", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black,
                15.0, TextAlign.center),
            const SizedBox(
              height: 3,
            ),
            CustomTextField(controller:controller, hint:"\t\t\tCellphone Number"),
            const SizedBox(
              height: 50,
            ),
            containerButton(() {}, "Purchase", radius: 30.0)
          ],
        ),
      ),
    );
  }
}

