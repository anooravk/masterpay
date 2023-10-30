import 'package:ewallet/confirmLotto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../colors.dart';

import '../common_widget.dart';
import '../images.dart';
import '../appbar.dart';
import 'dropdown.dart';


class LottoDetails extends StatefulWidget {
  const LottoDetails({Key? key}) : super(key: key);

  @override
  State<LottoDetails> createState() => _LottoDetailsState();
}

class _LottoDetailsState extends State<LottoDetails> {
  bool check = false;
  final List<String> accounts = ['MasterPay Wallet', 'Other'];
  String? selectedAccount;
  final List<String> boards = ['2 boards @ R10.00', 'Other'];
  String? selectedBoards;
  final List<String> draws = ['1 Draw', 'Other'];
  String? selectedDraw;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: boldText("LOTTO", Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black, 18.0),
            ),
            boldText("Details", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 16.0),
            lightText(
                "LOTTO costs R5.00 per board", Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 16.0),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                lightText("Play LOTTO Plus", Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black, 16.0),
                Checkbox(
                    value: check,
                    onChanged: (val) {
                      setState(() {
                        check = val!;
                      });
                    })
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            lightText("LOTTO Plus 1 costs R2.50 per board",
                Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black, 16.0),
            lightText("LOTTO Plus 2 costs R2.50 per board",
                Theme.of(context).brightness != Brightness.light
                    ?ColorResources.white
                    : ColorResources.black, 16.0),
            const SizedBox(
              height: 15,
            ),
            lightText("\t\t\t\t\tNumber of boards",Theme.of(context).brightness != Brightness.light
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
                    hint: boldText(
                        "Number of boards", Theme.of(context).brightness != Brightness.light
                        ?ColorResources.white
                        : ColorResources.black, 15.0),
                    value: selectedBoards,
                    items: boards.map(buildMenuItem).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedBoards = value.toString();
                      });
                    }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            lightText("\t\t\t\t\t\tNumber of draws", Theme.of(context).brightness != Brightness.light
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
                    hint:
                        boldText("Number of draws", Theme.of(context).brightness != Brightness.light
                            ?ColorResources.white
                            : ColorResources.black, 15.0),
                    value: selectedDraw,
                    items: draws.map(buildMenuItem).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedDraw = value.toString();
                      });
                    }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            lightText("\t\t\t\t\t\tFrom account", Theme.of(context).brightness != Brightness.light
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
                    hint: boldText("From account", Theme.of(context).brightness != Brightness.light
                        ?ColorResources.white
                        : ColorResources.black, 15.0),
                    value: selectedAccount,
                    items: accounts.map(buildMenuItem).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedAccount = value.toString();
                      });
                    }),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            containerButton(() {
              Get.to(ConfirmLotto());
            }, "Buy", radius: 30.0)
          ],
        ),
      ),
    );
  }
}
