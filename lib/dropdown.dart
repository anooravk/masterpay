import 'package:flutter/material.dart';

import '../colors.dart';
import '../common_widget.dart';



Center buildDropDown(widget) {
  return Center(
    child: Container(
        constraints: const BoxConstraints(
          maxHeight: 50,
          maxWidth: 430,
          minHeight: 30,
          minWidth: 340,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color:ColorResources.greyE1E)
        ),
        child:widget
    ),
  );
}
DropdownMenuItem<String> buildMenuItem(String value)=>DropdownMenuItem(
  value: value,
  child: boldText(value,ColorResources.greyE1E,15.0),);