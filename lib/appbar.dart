import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {Get.back();},
        icon:  Icon(
          Icons.arrow_back,
            color:Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {Get.back();},
          icon:  Icon(
            Icons.cancel_outlined,
              color:Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black
          ),
        ),
      ],
      centerTitle: true,
      title: Image.asset(
        Theme.of(context).brightness != Brightness.light
            ? Images.gpayLog2
            : Images.gpayLog,
        height: 60,
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize =>const Size.fromHeight(kToolbarHeight);
}

