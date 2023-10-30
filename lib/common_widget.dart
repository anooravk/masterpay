import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


import 'colors.dart';
import 'font_family.dart';
import 'images.dart';

mediumText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.poppinsMedium,
          fontSize: size,
          color: color),
    );

boldText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.poppinsBold, fontSize: size, color: color),
    );

blackText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.poppinsBlack,
          fontSize: size,
          color: color),
    );

lightText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.poppinsLight,
          fontSize: size,
          color: color),
    );

regularText(text, color, double size, [align]) => Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontFamily: TextFontFamily.poppinsRegular,
          fontSize: size,
          color: color),
    );

containerButton(onTap, text,{color=ColorResources.blue1D3,radius=16.0,}) => InkWell(
      onTap: onTap,
      child: Container(
        height: 52,
        width: Get.width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: boldText(text, ColorResources.white, 16),
        ),
      ),
    );

textField(hintText, icon, {controller,onChanged}) => TextFormField(
       controller: controller,
      onChanged: onChanged,
      cursorColor: ColorResources.black,
      style: TextStyle(
        color: ColorResources.black,
        fontSize: 16,
        fontFamily: TextFontFamily.poppinsRegular,
      ),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(15),
          child: SvgPicture.asset(icon),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorResources.grey9CA,
          fontSize: 16,
          fontFamily: TextFontFamily.poppinsRegular,
        ),
        filled: true,
        fillColor: ColorResources.greyF9F,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );

textField1(hintText) => TextFormField(
      cursorColor: ColorResources.black,
      style: TextStyle(
        color: ColorResources.black,
        fontSize: 16,
        fontFamily: TextFontFamily.poppinsRegular,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorResources.grey9CA,
          fontSize: 16,
          fontFamily: TextFontFamily.poppinsRegular,
        ),
        filled: true,
        fillColor: ColorResources.greyF9F,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );

commonColumn(image, text, onTap, {color=ColorResources.blue1D3}) => Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color:color ,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: onTap,
              child: SvgPicture.asset(image,color: Colors.white,),
            ),
          ),
        ),
        const SizedBox(height: 5),
        regularText(text, ColorResources.grey6B7, 13, TextAlign.center),
      ],
    );

Widget colorfulText({plainText,coloredText,onTap,context})=>RichText(
  textAlign: TextAlign.center,
  text: TextSpan(
      text: plainText,
      style: TextStyle(
          fontFamily: TextFontFamily.poppinsLight,
          color: Theme.of(context).brightness != Brightness.light
              ?ColorResources.white
              : ColorResources.black, fontSize: 14),
      children: <TextSpan>[
        TextSpan(text: coloredText,
            style: TextStyle(
                fontFamily: TextFontFamily.poppinsMedium,
                color: ColorResources.blue1D3, fontSize: 14,decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = onTap
        )
      ]
  ),
);



containersButton(onTap, text,{color=ColorResources.blue1D3,radius=16.0,textColor=ColorResources.white,color2=ColorResources.blue1D3}) => InkWell(
  onTap: onTap,
  child: Container(
    height: 48,
    width: Get.width,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: color2)
    ),
    child: Center(
      child: boldText(text, textColor, 16),
    ),
  ),
);

Widget commonCont(image, text, onTap, context) => InkWell(
  onTap: onTap,
  child:   Container(
    height: 65,width: 65,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Theme.of(context).brightness == Brightness.light
            ? ColorResources.white
            : ColorResources.darkgrey,
        border: Border.all(color: ColorResources.greyE1E)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SvgPicture.asset(image,height: 25,color:Theme.of(context).brightness != Brightness.light
              ?ColorResources.white
              : ColorResources.black),
        ),
        const SizedBox(height: 5,),
        regularText(text,Theme.of(context).brightness != Brightness.light
            ?ColorResources.white
            : ColorResources.black, 10, TextAlign.center),

      ],
    ),
  ),
);

class SpecificCol extends StatelessWidget {
  const SpecificCol({Key? key, this.heading, this.noSubtitle=false, this.imgPath, this.subtitle, this.isSvg=true}) : super(key: key);
  final heading;
  final noSubtitle;
  final imgPath;
  final subtitle;
  final isSvg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        lightText(heading, ColorResources.black, 15.0, TextAlign.center),
        const SizedBox(
          height: 5,
        ),
        SvgPicture.asset(
          Images.arrowUp,
          color: ColorResources.blue1D3,
          height: 18,
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 120,
          width: 150,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              color: ColorResources.greyF9F,
              width: 2,
            ),
          ),
          child: !noSubtitle
              ? Column(
            children: [
              isSvg?SvgPicture.asset(
                imgPath,
                color: ColorResources.white,
                height: 40,

              ):Image.asset(
                imgPath,
                height: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              lightText(
                  subtitle, Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black, 13.0, TextAlign.center),
            ],
          )
              : Center(
            child: boldText(
                subtitle, Theme.of(context).brightness != Brightness.light
                ?ColorResources.white
                : ColorResources.black, 15.0, TextAlign.center),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SvgPicture.asset(
          Images.arrowDownIcon,
          color: ColorResources.blue1D3,
          height: 11,
        )
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, this.controller, this.hint}) : super(key: key);
  final controller;
  final hint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          controller: controller,
          cursorColor: ColorResources.black,
          style: TextStyle(
            color: ColorResources.black,
            fontSize: 15,
            fontFamily: TextFontFamily.poppinsRegular,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: ColorResources.grey777,
              fontSize: 15,
              fontFamily: TextFontFamily.poppinsRegular,
            ),
            filled: true,
            fillColor: ColorResources.white,
            border: OutlineInputBorder(
              borderSide:
              const BorderSide(color: ColorResources.greyE1E, width: 1),
              borderRadius: BorderRadius.circular(30),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
              const BorderSide(color: ColorResources.greyE1E, width: 1),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              const BorderSide(color: ColorResources.greyE1E, width: 1),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
