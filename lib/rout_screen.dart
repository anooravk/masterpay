
import 'dart:io';

import 'package:ewallet/search_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../rout_controller.dart';

import '../people_screen.dart';
import '../home_screen.dart';
import '../notification_screen.dart';
import '../profile_screen.dart';
import '../colors.dart';
import '../common_widget.dart';
import '../images.dart';
import '../welcomecont.dart';
import '../chatstart.dart';

class RoutScreen extends StatelessWidget {
  final RoutController routController = Get.put(RoutController());
  final welcomeController = Get.put(WelcomeController());
  final pages = [PeopleScreen(),SearchScreen(),ProfileScreen(),NotificationScreen(),HomeScreen(),];

  RoutScreen({super.key});

  // buildMyNavBar(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
  //     child: Container(
  //       height: 75,
  //       decoration: BoxDecoration(
  //         color: Theme.of(context).brightness == Brightness.light
  //             ? ColorResources.white
  //             : ColorResources.black,
  //         borderRadius: BorderRadius.circular(70),
  //         boxShadow: [
  //           BoxShadow(
  //             blurRadius: 60,
  //             spreadRadius: 0,
  //             offset: const Offset(0, 4),
  //             color: ColorResources.black.withOpacity(0.25),
  //           ),
  //         ],
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           Obx(
  //             () => Column(
  //               children: [
  //                 IconButton(
  //                     enableFeedback: false,
  //                     onPressed: () {
  //                       routController.pageIndex.value = 0;
  //                     },
  //                     icon: routController.pageIndex.value == 0
  //                         ? SvgPicture.asset(Images.homeFillIcon,color: ColorResources.blue1D3)
  //                         : SvgPicture.asset(Images.homeBlankIcon,color: ColorResources.accentgreen)),
  //                 routController.pageIndex.value == 0
  //                     ? boldText("Home", ColorResources.blue1D3, 12)
  //                     : regularText("Home", ColorResources.grey6B7, 11),
  //               ],
  //             ),
  //           ),
  //           Obx(
  //             () => Column(
  //               children: [
  //                 IconButton(
  //                   enableFeedback: false,
  //                   onPressed: () {
  //                     routController.pageIndex.value = 1;
  //                   },
  //                   icon: routController.pageIndex.value == 1
  //                       ? SvgPicture.asset(Images.historyFillIcon,color: ColorResources.blue1D3)
  //                       : SvgPicture.asset(Images.historyBlankIcon,color: ColorResources.accentgreen),
  //                 ),
  //                 routController.pageIndex.value == 1
  //                     ? boldText("History", ColorResources.blue1D3, 12)
  //                     : regularText("History", ColorResources.grey6B7, 11),
  //               ],
  //             ),
  //           ),
  //           Obx(
  //             () => Column(
  //               children: [
  //                 IconButton(
  //                   enableFeedback: false,
  //                   onPressed: () {
  //                     routController.pageIndex.value = 2;
  //                   },
  //                   icon: routController.pageIndex.value == 2
  //                       ? SvgPicture.asset(Images.profileFillIcon ,color: ColorResources.blue1D3)
  //                       : SvgPicture.asset(Images.profileBlankIcon,color: ColorResources.accentgreen),
  //                 ),
  //                 routController.pageIndex.value == 2
  //                     ? boldText("Profile", ColorResources.blue1D3, 12)
  //                     : regularText("Profile", ColorResources.grey6B7, 11),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  buildMyNavBar(BuildContext context) {
    return Container(
      height: Platform.isAndroid?90:120,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? ColorResources.white
            : ColorResources.black,
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: Platform.isAndroid?10:20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItems(
              onPressed: () {
                routController.pageIndex.value = 0;
              },
              icon: routController.pageIndex.value != 0
                  ? const Icon(Icons.chat_outlined,
                      color: ColorResources.darkgrey)
                  : const Icon(Icons.chat, color: ColorResources.darkgrey),
              labelWidget: routController.pageIndex.value == 0
                  ? boldText("Chat", ColorResources.darkgrey, 12)
                  : regularText("Chat", ColorResources.grey6B7, 11),
            ),
            NavItems(
              onPressed: () {
                routController.pageIndex.value = 1;
              },
              icon: routController.pageIndex.value != 1
                  ? Icon(Icons.border_all_rounded,
                      color: ColorResources.darkgrey)
                  : Icon(Icons.square_rounded,
                      color: ColorResources.darkgrey),
              labelWidget: routController.pageIndex.value == 1
                  ? boldText("Discover", ColorResources.darkgrey, 12)
                  : regularText("Discover", ColorResources.grey6B7, 11),
            ),NavItems(
              onPressed: () {
                routController.pageIndex.value = 4;
              },
              icon: routController.pageIndex.value != 4
                  ? Icon(Icons.menu, color: ColorResources.darkgrey)
                  : Icon(Icons.menu, color: ColorResources.darkgrey),
              labelWidget: routController.pageIndex.value == 4
                  ? boldText("Menu", ColorResources.darkgrey, 12)
                  : regularText("Menu", ColorResources.grey6B7, 11),
            ),

            NavItems(
              onPressed: () {
                routController.pageIndex.value = 3;
              },
              icon: routController.pageIndex.value != 3
                  ? Icon(Icons.notifications_active_outlined,
                      color: ColorResources.darkgrey)
                  : Icon(Icons.notifications_active,
                      color: ColorResources.darkgrey),
              labelWidget: routController.pageIndex.value == 3
                  ? boldText("Notifications", ColorResources.darkgrey, 12)
                  : regularText("Notifications", ColorResources.grey6B7, 11),
            ),
            NavItems(
              onPressed: () {
                routController.pageIndex.value = 2;
              },
              icon: routController.pageIndex.value != 2
                  ? Icon(Icons.supervised_user_circle_outlined,
                  color: ColorResources.darkgrey)
                  : Icon(Icons.supervised_user_circle,
                  color: ColorResources.darkgrey),
              labelWidget: routController.pageIndex.value == 2
                  ? boldText("User", ColorResources.darkgrey, 12)
                  : regularText("User", ColorResources.grey6B7, 11),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          alignment: Alignment.bottomCenter,
          children: [
            pages[routController.pageIndex.value],
            buildMyNavBar(context),
          ],
        ),
      ),
    );
  }
}

class NavItems extends StatelessWidget {
  const NavItems({Key? key, this.onPressed, this.icon, this.labelWidget})
      : super(key: key);
  final onPressed;
  final icon;
  final labelWidget;

  @override
  Widget build(BuildContext context) {
    return //Obx(
        // ()=>
        Column(
      children: [
        IconButton(
          enableFeedback: false,
          onPressed: onPressed,
          icon: icon,
        ),
        labelWidget
      ],
      // ),
    );
  }
}
