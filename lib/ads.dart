import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../common_widget.dart';
import '../images.dart';

import 'cont.dart';


class Ads extends StatefulWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {

  int index = 0;
  List pageViewList = [
     Images.adleaflet,
      Images.adAssupol,
      Images.adEdgars,
      Images.adSpar,
      Images.adNedbank,
      Images.adVodacom,
  ];
  int _current = 0;
  CarouselController buttonCarouselController = CarouselController();
  AdsController adsController = AdsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        Container(
         height: 110,
          width: Get.width,
          child: CarouselSlider.builder(
        itemCount: pageViewList.length,
        itemBuilder:
        (BuildContext context, int index, int pageViewIndex) {
          return Image.asset(
            pageViewList[index],
            alignment: AlignmentDirectional.center,
          );
        },
            carouselController: buttonCarouselController,
            options: CarouselOptions(
            onPageChanged: (index, reason) {
            setState(() {
            _current = index;
            });
            },
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration:
            Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
                ),
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageViewList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => buttonCarouselController.animateToPage(entry.key),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(horizontal: 3.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:  ColorResources.blue1D3

                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
    //
    //   Column(
    //     children: [
    //       Container(
    //
    //         child:  CarouselSlider.builder(
    //           itemCount: pageViewList.length,
    //           itemBuilder:
    //               (BuildContext context, int index, int pageViewIndex) {
    //             return Container(
    //                 width: Get.width,
    //                 child: Image.asset(
    //                   pageViewList[index],
    //                   alignment: AlignmentDirectional.center,
    //                 ),
    //               );
    //           },
    //           carouselController: buttonCarouselController,
    //           options: CarouselOptions(
    //             onPageChanged: (index, reason) {
    //               adsController.updateIndex(index);
    //             },
    //             height: Get.height * 0.6,
    //             initialPage: 1,
    //             enableInfiniteScroll: false,
    //             reverse: false,
    //             autoPlay: true,
    //             autoPlayInterval: const Duration(seconds: 3),
    //             autoPlayAnimationDuration: const Duration(milliseconds: 800),
    //             autoPlayCurve: Curves.fastOutSlowIn,
    //             enlargeCenterPage: false,
    //             scrollDirection: Axis.horizontal,
    //           ),
    //         ),
    //       ),
    //   Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: pageViewList.asMap().entries.map((entry) {
    //       return GestureDetector(
    //         onTap: () => buttonCarouselController.animateToPage(entry.key),
    //         child: Container(
    //           width: 7.0,
    //           height: 7.0,
    //           margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
    //           decoration: BoxDecoration(
    //               shape: BoxShape.circle,
    //               color: (Theme.of(context).brightness == Brightness.dark
    //                   ? Colors.white
    //                   : Colors.black)
    //                   .withOpacity(_current == entry.key ? 0.9 : 0.4)),
    //         ),
    //       );
    //     }).toList(),
    //   ),],
    //   ),
    // );
  }
}
