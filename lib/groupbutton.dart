import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

import '../colors.dart';
import '../font_family.dart';


class Groupie extends StatelessWidget {
  const Groupie({Key? key,this.list}) : super(key: key);
  final list;
  @override
  Widget build(BuildContext context) {
    return GroupButton(
      isRadio: false,
      onSelected: (name,index,isSelected) => debugPrint('$index button is selected'),
      buttons: list,
      options: GroupButtonOptions(
        selectedShadow: const [],
        selectedTextStyle: TextStyle(
            fontFamily: TextFontFamily.poppinsBold, fontSize: 15.0, color: ColorResources.black),
        unselectedTextStyle: TextStyle(
            fontFamily: TextFontFamily.poppinsBold, fontSize: 15.0, color: ColorResources.black),
        selectedBorderColor: ColorResources.blue1D3,
        unselectedBorderColor: ColorResources.redD90,
        selectedColor: ColorResources.blue1D3.withOpacity(0.3),
        unselectedColor: ColorResources.white,
        borderRadius: BorderRadius.circular(100),
        spacing: 10,
        runSpacing: 10,
        groupingType: GroupingType.wrap,
        direction: Axis.horizontal,
        buttonHeight: 45,
        buttonWidth: 45,
        mainGroupAlignment: MainGroupAlignment.start,
        crossGroupAlignment: CrossGroupAlignment.start,
        groupRunAlignment: GroupRunAlignment.start,
        textAlign: TextAlign.center,
        textPadding: EdgeInsets.zero,
        alignment: Alignment.center,
        elevation: 0,
      ),
    );
  }
}
