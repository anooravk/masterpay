import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';

import 'package:get/get.dart';

import '/colors.dart';
import '/common_widget.dart';

import 'appbar.dart';
import 'creditCard.dart';




class AddNewCardScreens extends StatefulWidget {
  const AddNewCardScreens({Key? key}) : super(key: key);

  @override
  State<AddNewCardScreens> createState() => _AddNewCardScreensState();
}

class _AddNewCardScreensState extends State<AddNewCardScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              boldText("Add Your Card", Theme.of(context).brightness != Brightness.light
                  ?ColorResources.white
                  : ColorResources.black, 24.0),
              CreditCard(
                cardHolderName: '',
                cardNumber: '',
                cvvCode: '',
                expiryDate: '',
                onChanged: (CreditCardBrand? van) {},
                isCvvFocused: false,
              ),
              SizedBox(
                width: 200,
                child: containerButton(() {
                  // Get.to(Routes.withdrawScreen);
                }, "Next"),
              ),
              Container(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
