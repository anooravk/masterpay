import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';

import '../colors.dart';
import '../font_family.dart';


class OnlyBottomCursor extends StatefulWidget {
  const OnlyBottomCursor({Key? key}) : super(key: key);

  @override
  _OnlyBottomCursorState createState() => _OnlyBottomCursorState();

}

class _OnlyBottomCursorState extends State<OnlyBottomCursor> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const borderColor = ColorResources.blue1D3;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontFamily: TextFontFamily.poppinsBold,
        fontSize: 22,
        color: ColorResources.black,
      ),
      decoration: const BoxDecoration(),
    );

    final cursor = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
    final preFilledWidget = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
            color: ColorResources.darkgrey,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );

    return Pinput(
      length: 5,
      pinAnimationType: PinAnimationType.slide,
      controller: controller,
      focusNode: focusNode,
      defaultPinTheme: defaultPinTheme,
      showCursor: true,
      cursor: cursor,
      preFilledWidget: preFilledWidget,
    );
  }
}