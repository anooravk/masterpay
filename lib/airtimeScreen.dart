import 'package:ewallet/electricityScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../colors.dart';

import '../images.dart';

import '/common_widget.dart';
import 'appbar.dart';
import 'dropdown.dart';


class AirtimeBundleScreen extends StatefulWidget {
  const AirtimeBundleScreen({Key? key}) : super(key: key);

  @override
  State<AirtimeBundleScreen> createState() => _AirtimeBundleScreenState();
}

class _AirtimeBundleScreenState extends State<AirtimeBundleScreen> {
  final List<String> available = ['MasterPay Wallet', 'Other'];
  String? selected;
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
              child: boldText("Airtime & Bundles", Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black, 18.0,
                  TextAlign.center),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SpecificCol(
                    isSvg: false,
                    heading: "Network",
                    imgPath: Images.network,
                    subtitle: "Telkom Mobile\nPrepaid Airtime"),
                SpecificCol(
                    isSvg: false,
                    heading: "Type",
                    imgPath: Images.network,
                    subtitle: "Fixed Amount R12-R1000 Top up",
                    noSubtitle: true),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            lightText(
                "\t\t\tNumber", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 15.0, TextAlign.center),
            lightText("\t\t\t+233705367083", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 15.0,
                TextAlign.center),
            const SizedBox(
              height: 10,
            ),
            lightText("\t\t\t\t\t\tAccount", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 15.0,
                TextAlign.center),
            const SizedBox(
              height: 3,
            ),
            buildDropDown(
              DropdownButtonHideUnderline(
                child: DropdownButton(
                    icon: SvgPicture.asset(
                      Images.arrowDownIcon,
                      color: ColorResources.blue1D3,
                      height: 10,
                    ),
                    iconSize: 35,
                    hint: boldText("Account", Theme.of(context).brightness != Brightness.light
                        ?ColorResources.white
                        : ColorResources.black, 15.0),
                    value: selected,
                    items: available.map(buildMenuItem).toList(),
                    onChanged: (value) {
                      setState(() {
                        selected = value.toString();
                      });
                    }),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            lightText("\t\t\t\t\t\tAmount", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 15.0,
                TextAlign.center),
            const SizedBox(
              height: 3,
            ),
            CustomTextField(controller: controller, hint: "\t\t\t60.00",),
            const SizedBox(
              height: 40,
            ),
            containerButton(() {
              Get.to(ElectricityScreen());
            }, "Purchase", radius: 30.0)
          ],
        ),
      ),
    );
  }
}

