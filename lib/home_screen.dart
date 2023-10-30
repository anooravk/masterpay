import 'dart:io';

import 'package:ewallet/payingServices.dart';
import 'package:ewallet/scan_qrcode_screen.dart';
import 'package:ewallet/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:page_transition/page_transition.dart';

import 'package:swipe_to/swipe_to.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../../images.dart';

import '../colors.dart';

import '../common_widget.dart';

import '../font_family.dart';
import '../ads.dart';
import '../receivePaymentScreen.dart';
import '../setpin.dart';
import 'homeController.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.put(HomeController());
  bool isFinished = false;
  var fk = true.obs;
  var position = "center".obs;

  @override
  void initState() {
    position.value = "center";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Image.asset(
            Theme.of(context).brightness != Brightness.light
                ? Images.gpayLog2
                : Images.gpayLog,
            height: 60,
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 130, width: Get.width, child: Ads()),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      containersButton(
                        () {
                          Get.to(SetPinScreen());
                        },
                        "Set Pin",
                        color: ColorResources.darkgrey,
                        radius: 10.0,
                        color2: ColorResources.darkgrey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Forgot Pin",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: TextFontFamily.poppinsLight,
                            decoration: TextDecoration.underline),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      containersButton(
                        () {},
                        "MasterPay Market",
                        color: ColorResources.darkgrey,
                        radius: 10.0,
                        color2: ColorResources.darkgrey,
                      ),
                    ],
                  ),
                   SizedBox(
                    height: Platform.isAndroid ?10:20,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                      child: PayingServices()),
                  SizedBox(
                    height: Platform.isAndroid ? 180 : 220,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 5,
                          left: 5,
                          top: Get.height / 30,
                          child: containersButton(() {},
                              "Receive \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPay",
                              color: ColorResources.darkgrey,
                              radius: 30.0,
                              color2: ColorResources.darkgrey,
                              textColor: ColorResources.blue1D3),
                        ),
                        Positioned(
                            top: 6,
                            right: Get.width / 3.2,
                            child: SwipeTo(
                              iconSize: 0.0,
                              child: CircleAvatar(
                                backgroundColor: ColorResources.blue1D3,
                                radius: 50,
                                child: Image.asset(
                                  Images.iconscan,
                                  color: ColorResources.white,
                                  height: 55,
                                ),
                              ),
                              offsetDx: 1.0,
                              onLeftSwipe: () {
                                Get.off(ReceivePaymentScreen());
                              },
                              onRightSwipe: () {
                                Get.off(ScanQrCodeScreen());
                              },
                            )
                            // GestureDetector(
                            //   onPanUpdate: (details) {
                            //     if (details.delta.dx > 0) {
                            //       position.value="right";
                            //       Future.delayed(Duration(seconds: 1)).then((value) => Get.off(ScanQrCodeScreen()));
                            //     }
                            //     if (details.delta.dx < 0) {
                            //       position.value="left";
                            //       Future.delayed(Duration(seconds: 1)).then((value) => Get.off(ReceivePaymentScreen()));
                            //     }
                            //   },
                            //     child: Obx(
                            //       ()=>CircleAvatar(
                            //         backgroundColor: ColorResources.blue1D3,
                            //         radius: 50,
                            //         child: Image.asset(
                            //           Images.iconscan,
                            //           color: ColorResources.white,
                            //           height: 55,
                            //         ),
                            //       ).animate().moveX(
                            //         delay: Duration(seconds: 1),
                            //         begin: 0.0,
                            //         end:  position.value=="left"?-100.0:position.value=="right"?100.0:0.0
                            //       ),
                            //     ),
                            // ),
                            )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ])));
  }
}

// import 'package:ewallet/Utils/colors.dart';
// import 'package:ewallet/Utils/common_widget.dart';
// import 'package:ewallet/Utils/font_family.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
//
// import '../ScannerScreen/scan_qrcode_screen.dart';
// import '../Utils/images.dart';
// import 'BankBalanceScreen/bank_balance_screen.dart';
// import 'EnterMobileNumber&RecipientScreens/enter_mobilenumber_screen.dart';
// import 'EnterMobileNumber&RecipientScreens/enter_recipient_screen.dart';
// import 'PromotionScreen/RewardsScreen/rewards_screen.dart';
// import 'PromotionScreen/VoucherScreen/voucher_screen.dart';
// import 'PromotionScreen/offers_screen.dart';
// import 'PromotionScreen/referrals_screen.dart';
// import 'SelfTransferScreen/self_transfer_screen.dart';
//
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);
//   final List<Map> promotionList = [
//     {
//       "image": Images.rewardImage,
//       "text": "Reward",
//       "onTap": () {
//         Get.to(RewardsScreen());
//       },
//     },
//     {
//       "image": Images.offersImage,
//       "text": "Offers",
//       "onTap": () {
//         Get.to(OffersScreen());
//       },
//     },
//     {
//       "image": Images.referralsImage,
//       "text": "Referrals",
//       "onTap": () {
//         Get.to(const ReferralsScreen());
//       },
//     },
//     {
//       "image": Images.voucherImage,
//       "text": "Voucher",
//       "onTap": () {
//         Get.to(VoucherScreen());
//       },
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: boldText("SpotPay", ColorResources.blue1D3, 26.0),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(height: 30,),
//           LayoutBuilder(
//                       builder: (context, constraints) => GridView.count(
//                         padding: const EdgeInsets.only(
//                             top: 5, left: 2, right: 2, bottom: 2),
//                         childAspectRatio:
//                             MediaQuery.of(context).size.aspectRatio * 3 / 0.6,
//                         shrinkWrap: true,
//                         crossAxisCount: 2,
//                         crossAxisSpacing: 15,
//                         mainAxisSpacing: 15,
//                         physics: const NeverScrollableScrollPhysics(),
//                         children: List.generate(
//                           promotionList.length,
//                           (index) => InkWell(
//                             onTap: promotionList[index]["onTap"],
//                             child: Container(
//                               height: 55,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: ColorResources.white,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     blurRadius: 2,
//                                     offset: const Offset(0, 0),
//                                     spreadRadius: 0,
//                                     color:
//                                         ColorResources.black.withOpacity(0.25),
//                                   ),
//                                 ],
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.only(right: 15),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     SvgPicture.asset(
//                                         promotionList[index]["image"]),
//                                     mediumText(promotionList[index]["text"],
//                                         ColorResources.blue1D3, 16),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ).toList(),
//                       ),
//                     ),
//             SizedBox(height: 50,),
//             // containerButton((){}, "Login"),
//             // SizedBox(height: 10,),
//             // Text("Forgot Pin",style: TextStyle(fontSize: 14,fontFamily: TextFontFamily.poppinsLight,decoration: TextDecoration.underline),),
//             // SizedBox(height: 10,),
//             // containerButton((){}, "SpotPay Market"),
//
//             Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         commonColumn(
//                           Images.card,
//                           "Wallet",
//                               () {
//                             Get.to(const BankBalanceScreen());
//                           },
//                           color: Colors.grey
//                         ),
//                         const SizedBox(width: 10,),
//                         commonColumn(
//                           Images.selfTransfer,
//                           "Transfer",
//                           () {
//                             Get.to(const SelfTrasferScreen());
//                           },
//                             color: Colors.grey
//                         ),
//                         const SizedBox(width: 10,),
//                         commonColumn(
//                             Images.mobileRechargeImage,
//                             "Perpaid",
//                                 () {
//                               Get.to(const EnterRecipientDetailScreen());
//                             },
//                             color: Colors.grey
//                         ),
//                       ],
//                     ),
//             SizedBox(height: 15,),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 commonColumn(
//                     Images.monitorImage,
//                     "Deposit",
//                         () {
//                       Get.to(const BankBalanceScreen());
//                     },
//                     color: Colors.grey
//                 ),
//                 const SizedBox(width: 10,),
//                 commonColumn(
//                     Images.cylinderImage,
//                     "Market",
//                         () {
//                       Get.to(const SelfTrasferScreen());
//                     },
//                     color: Colors.grey
//                 ),
//                 const SizedBox(width: 10,),
//                 commonColumn(
//                     Images.fastagRecharge,
//                     "Parking",
//                         () {
//                       Get.to(const EnterRecipientDetailScreen());
//                     },
//                     color: Colors.grey
//                 ),
//               ],
//             ),
//             SizedBox(height: 40,),
//             SizedBox(
//               height: 200,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     right: 5,
//                     left: 5,
//                     top: Get.height/30,
//                     child: containerButton((){}, "Receive \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tPay",color: Colors.grey),),
//                   Positioned(
//                     top: 12,
//                    right: Get.width/3,
//                     child: InkWell(
//                       onTap: (){Get.to(const ScanQrCodeScreen());},
//                       child: CircleAvatar(
//                         backgroundColor: ColorResources.blue1D3,
//                         radius: 40,
//                         child: SvgPicture.asset(Images.scanIcon,height: 50,),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:ewallet/HomeScreen/ElectricityBillScreens/all_electrycity_billers_screen.dart';
// import 'package:ewallet/HomeScreen/BankBalanceScreen/bank_balance_screen.dart';
// import 'package:ewallet/HomeScreen/PromotionScreen/VoucherScreen/voucher_screen.dart';
// import 'package:ewallet/HomeScreen/PromotionScreen/offers_screen.dart';
// import 'package:ewallet/HomeScreen/PromotionScreen/referrals_screen.dart';
// import 'package:ewallet/HomeScreen/PromotionScreen/RewardsScreen/rewards_screen.dart';
// import 'package:ewallet/HomeScreen/ViewMoreScreens/business_bills_screen.dart';
// import 'package:ewallet/HomeScreen/EnterMobileNumber&RecipientScreens/enter_mobilenumber_screen.dart';
// import 'package:ewallet/HomeScreen/EnterMobileNumber&RecipientScreens/enter_recipient_screen.dart';
// import 'package:ewallet/HomeScreen/MobileRechargeScreen/mobile_recharge_screen.dart';
// import 'package:ewallet/HomeScreen/ChatScreens/chat_screen2.dart';
// import 'package:ewallet/HomeScreen/ViewMoreScreens/payment_categories_screen.dart';
// import 'package:ewallet/HomeScreen/ViewMoreScreens/people_screen.dart';
// import 'package:ewallet/HomeScreen/SelfTransferScreen/self_transfer_screen.dart';
// import 'package:ewallet/NotificationsScreen/notification_screen.dart';
// import 'package:ewallet/ScannerScreen/scan_qrcode_screen.dart';
// import 'package:ewallet/Search_Screen/search_screen.dart';
// import 'package:ewallet/Utils/colors.dart';
// import 'package:ewallet/Utils/common_widget.dart';
// import 'package:ewallet/Utils/images.dart';
// import 'package:ewallet/main.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);
//
//   final List<Map> paymentCategoryList = [
//     {
//       "image": Images.mobileRechargeImage,
//       "text": "Mobile\nrecharge",
//       "color":ColorResources.blue1D3,
//       "onTap": () {
//         Get.to(MobileRechargeScreen());
//       },
//     },
//     {
//       "image": Images.electricityImage,
//       "text": "Electricity",
//       "color":ColorResources.blue1D3,
//       "onTap": () {
//         Get.to(AllElectriCityBillersScreen());
//       },
//     },
//     // {
//     //   "image": Images.monitorImage,
//     //   "text": "DTH",
//     //   "color":ColorResources.blue1D3,
//     //   "onTap": () {
//     //     Get.to(SelectProviderScreen());
//     //   },
//     // },
//     {
//       "image": Images.fastagRecharge,
//       "text": "FASTag\nrecharge",
//       "color":ColorResources.blue1D3,
//       "onTap": () {
//         Get.to(AllElectriCityBillersScreen());
//       },
//     },
//     // {
//     //   "image": Images.googlePlayImage,
//     //   "text": "Google\nPlay",
//     //   "color":ColorResources.blue1D3,
//     //   "onTap": () {
//     //     Get.to(GooglePlayScreen());
//     //   },
//     // },
//     // {
//     //   "image": Images.card,
//     //   "text": "Credit\nCard Bill",
//     //   "color":ColorResources.blue1D3,
//     //   "onTap": () {
//     //     Get.to(AllElectriCityBillersScreen());
//     //   },
//     // },
//     // {
//     //   "image": Images.cylinderImage,
//     //   "text": "Book A\nCylinder",
//     //   "color":ColorResources.blue1D3,
//     //   "onTap": () {
//     //     Get.to(AllElectriCityBillersScreen());
//     //   },
//     // },
//     {
//       "image": Images.addImage,
//       "text": "+ More",
//       "color":ColorResources.blue1D3,
//       "onTap": () {
//         Get.to(PaymentCategoriesScreen());
//       },
//     },
//   ];
//
//   final List<Map> peopleList = [
//     {
//       "image": Images.jenny,
//       "text": "Jenny",
//       "onTap": () {
//         Get.to(const ChatScreen2());
//       },
//     },
//     {
//       "image": Images.bessie,
//       "text": "Bessie",
//       "onTap": () {
//         Get.to(const ChatScreen2());
//       },
//     },
//     {
//       "image": Images.jacob,
//       "text": "Jacob",
//       "onTap": () {
//         Get.to(const ChatScreen2());
//       },
//     },
//     {
//       "image": Images.darlene,
//       "text": "Darlene",
//       "onTap": () {
//         Get.to(const ChatScreen2());
//       },
//     },
//     {
//       "image": Images.addPng,
//       "text": "+ More",
//       "onTap": () {
//         Get.to(PeopleScreen());
//       },
//     },
//   ];
//
//   final List<Map> businessAndBillsList = [
//     {
//       "image": Images.uber,
//       "text": "Uber",
//       "onTap": () {},
//     },
//     {
//       "image": Images.airbnb,
//       "text": "Airbnb",
//       "onTap": () {},
//     },
//     {
//       "image": Images.burgerKing,
//       "text": "Burger King",
//       "onTap": () {},
//     },
//     {
//       "image": Images.vw,
//       "text": "Volkswagen",
//       "onTap": () {},
//     },
//     {
//       "image": Images.zomato,
//       "text": "Zomato",
//       "onTap": () {},
//     },
//     {
//       "image": Images.macDonalds,
//       "text": "Mcdonald’S",
//       "onTap": () {},
//     },
//     {
//       "image": Images.amazonPay,
//       "text": "Amazon",
//       "onTap": () {},
//     },
//     {
//       "image": Images.addPng,
//       "text": "+ More",
//       "onTap": () {
//         Get.to(BusinessAndBillsScreen());
//       },
//     },
//   ];
//
//   final List<Map> promotionList = [
//     {
//       "image": Images.rewardImage,
//       "text": "Reward",
//       "onTap": () {
//         Get.to(RewardsScreen());
//       },
//     },
//     {
//       "image": Images.offersImage,
//       "text": "Offers",
//       "onTap": () {
//         Get.to(OffersScreen());
//       },
//     },
//     {
//       "image": Images.referralsImage,
//       "text": "Referrals",
//       "onTap": () {
//         Get.to(const ReferralsScreen());
//       },
//     },
//     {
//       "image": Images.voucherImage,
//       "text": "Voucher",
//       "onTap": () {
//         Get.to(VoucherScreen());
//       },
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: ColorResources.white,
//       body: Stack(
//         children: [
//           Container(
//             width: Get.width,
//             decoration: const BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 bottomRight: Radius.circular(27),
//                 bottomLeft: Radius.circular(27),
//               ),
//               color: ColorResources.blue1D3,
//             ),
//             child: Padding(
//               padding:
//                   const EdgeInsets.only(top: 40, bottom: 20, left: 25, right: 25),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                       onTap: () {
//                         Get.to(SearchScreen());
//                       },
//                       child: SvgPicture.asset(Images.search,
//                           color: ColorResources.white)),
//                   InkWell(
//                     onTap: () {
//                       Get.to(const ScanQrCodeScreen());
//                     },
//                     child: SvgPicture.asset(Images.scanIcon),
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Get.to(NotificationScreen());
//                       },
//                       child: SvgPicture.asset(Images.notificationIcon)),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
//             child: ScrollConfiguration(
//               behavior: MyBehavior(),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 210,
//                       width: Get.width,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         image: const DecorationImage(
//                           image: AssetImage(Images.bannerImage),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     boldText("Transfer Money", ColorResources.blue1D3, 20),
//                     const SizedBox(height: 15),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         commonColumn(
//                           Images.card,
//                           "Wallet \nBalance",
//                               () {
//                             Get.to(const BankBalanceScreen());
//                           },
//                         ),
//                         const SizedBox(width: 10,),
//                         commonColumn(
//                           Images.bankTransfer,
//                           "Bank \ntransfer",
//                           () {
//                             Get.to(const EnterRecipientDetailScreen());
//                           },
//                         ),
//                         const SizedBox(width: 10,),
//                         commonColumn(
//                           Images.selfTransfer,
//                           "Self-\ntransfer",
//                           () {
//                             Get.to(const SelfTrasferScreen());
//                           },
//                         ),
//
//                         const SizedBox(width: 10,),
//                         commonColumn(
//                           Images.phoneTransfer,
//                           "Phone \nnumber",
//                               () {
//                             Get.to(MobileNumberScreen());
//                           },
//                         ),
//
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     boldText("Payment Categories", ColorResources.blue1D3, 20),
//                     const SizedBox(height: 20),
//                     LayoutBuilder(
//                       builder: (context, constraints) => GridView.count(
//                         padding: const EdgeInsets.only(top: 5, left: 2, right: 2),
//                         childAspectRatio:
//                             MediaQuery.of(context).size.aspectRatio * 3 / 2.6,
//                         shrinkWrap: true,
//                         crossAxisCount: 4,
//                         crossAxisSpacing: 20,
//                         mainAxisSpacing: 20,
//                         physics: const NeverScrollableScrollPhysics(),
//                         children: List.generate(
//                           paymentCategoryList.length,
//                           (index) => Column(
//                             children: [
//                               InkWell(
//                                 onTap: paymentCategoryList[index]["onTap"],
//                                 child: Container(
//                                   height: 65,
//                                   width: 65,
//                                   decoration: BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     color: ColorResources.greyF1F,
//                                     boxShadow: [
//                                       BoxShadow(
//                                         blurRadius: 2,
//                                         offset: const Offset(0, 0),
//                                         spreadRadius: 0,
//                                         color: ColorResources.black
//                                             .withOpacity(0.25),
//                                       ),
//                                     ],
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(15),
//                                     child: SvgPicture.asset(
//                                         paymentCategoryList[index]["image"],color: paymentCategoryList[index]["color"],),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               regularText(paymentCategoryList[index]["text"],
//                                   ColorResources.grey6B7, 14, TextAlign.center),
//                             ],
//                           ),
//                         ).toList(),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     boldText("People", ColorResources.blue1D3, 20),
//                     const SizedBox(height: 20),
//                     SizedBox(
//                       height: 95,
//                       width: Get.width,
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: peopleList.length,
//                         shrinkWrap: true,
//                         padding: EdgeInsets.zero,
//                         itemBuilder: (context, index) => Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(right: 30),
//                               child: InkWell(
//                                 onTap: peopleList[index]["onTap"],
//                                 child: CircleAvatar(
//                                   radius: 35,
//                                   backgroundColor: ColorResources.white,
//                                   backgroundImage:
//                                       AssetImage(peopleList[index]["image"]),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 5),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 30),
//                               child: regularText(peopleList[index]["text"],
//                                   ColorResources.grey6B7, 14),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     // boldText(
//                     //     "Businesses and Bills", ColorResources.blue1D3, 20),
//                     const SizedBox(height: 20),
//                     // LayoutBuilder(
//                     //   builder: (context, constraints) => GridView.count(
//                     //     padding: EdgeInsets.only(top: 5, left: 2, right: 2),
//                     //     childAspectRatio:
//                     //         MediaQuery.of(context).size.aspectRatio * 3 / 2.6,
//                     //     shrinkWrap: true,
//                     //     crossAxisCount: 4,
//                     //     crossAxisSpacing: 20,
//                     //     mainAxisSpacing: 20,
//                     //     physics: NeverScrollableScrollPhysics(),
//                     //     children: List.generate(
//                     //       businessAndBillsList.length,
//                     //       (index) => Column(
//                     //         children: [
//                     //           InkWell(
//                     //             onTap: businessAndBillsList[index]["onTap"],
//                     //             child: Image.asset(
//                     //               businessAndBillsList[index]["image"],
//                     //             ),
//                     //           ),
//                     //           SizedBox(height: 5),
//                     //           regularText(businessAndBillsList[index]["text"],
//                     //               ColorResources.grey6B7, 14, TextAlign.center),
//                     //         ],
//                     //       ),
//                     //     ).toList(),
//                     //   ),
//                     // ),
//                     const SizedBox(height: 20),
//                      boldText("Promotions", ColorResources.blue1D3, 20),
//                     const SizedBox(height: 20),
//                     LayoutBuilder(
//                       builder: (context, constraints) => GridView.count(
//                         padding: const EdgeInsets.only(
//                             top: 5, left: 2, right: 2, bottom: 2),
//                         childAspectRatio:
//                             MediaQuery.of(context).size.aspectRatio * 3 / 0.6,
//                         shrinkWrap: true,
//                         crossAxisCount: 2,
//                         crossAxisSpacing: 15,
//                         mainAxisSpacing: 15,
//                         physics: const NeverScrollableScrollPhysics(),
//                         children: List.generate(
//                           promotionList.length,
//                           (index) => InkWell(
//                             onTap: promotionList[index]["onTap"],
//                             child: Container(
//                               height: 55,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: ColorResources.white,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     blurRadius: 2,
//                                     offset: const Offset(0, 0),
//                                     spreadRadius: 0,
//                                     color:
//                                         ColorResources.black.withOpacity(0.25),
//                                   ),
//                                 ],
//                               ),
//                               child: Padding(
//                                 padding: const EdgeInsets.only(right: 15),
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     SvgPicture.asset(
//                                         promotionList[index]["image"]),
//                                     mediumText(promotionList[index]["text"],
//                                         ColorResources.blue1D3, 16),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ).toList(),
//                       ),
//                     ),
//                     const SizedBox(height: 110),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
