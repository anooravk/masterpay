import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import '../colors.dart';
import '/font_family.dart';


class CreditCard extends StatefulWidget {
  CreditCard({
    Key? key,
    this.cardNumber,
    this.cvvCode,
    this.expiryDate,
    this.cardHolderName,
    this.isCvvFocused,
    this.onChanged,
  }) : super(key: key);
  var cardNumber;
  var cvvCode;
  var expiryDate;
  var cardHolderName;
  var isCvvFocused;
  var onChanged;

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  OutlineInputBorder? border;
  TextStyle? hintText;
  TextStyle? labelText;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: const BorderSide(color: ColorResources.greyF9F, width: 1),
      borderRadius: BorderRadius.circular(12),
    );
    hintText = TextStyle(
      color: ColorResources.grey9CA,
      fontSize: 16,
      fontFamily: TextFontFamily.poppinsRegular,
    );
    labelText = TextStyle(
      color:  ColorResources.greyE1E,
      fontSize: 16,
      fontFamily: TextFontFamily.poppinsRegular,
    );
    super.initState();
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      widget.cardNumber = creditCardModel!.cardNumber;
      widget.expiryDate = creditCardModel.expiryDate;
      widget.cardHolderName = creditCardModel.cardHolderName;
      widget.cvvCode = creditCardModel.cvvCode;
      widget.isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CreditCardWidget(
        cardNumber: widget.cardNumber,
        expiryDate: widget.expiryDate,
        cardHolderName: widget.cardHolderName,
        cvvCode: widget.cvvCode,
        showBackView: widget.isCvvFocused,
        cardType: CardType.mastercard,
        obscureCardCvv: true,
        isHolderNameVisible: true,
        isChipVisible: true,
        isSwipeGestureEnabled: true,
        onCreditCardWidgetChange: widget.onChanged,
      ),
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CreditCardForm(
              formKey: formKey,
              obscureCvv: true,
              obscureNumber: true,
              cardNumber: widget.cardNumber,
              cvvCode: widget.cvvCode,
              isHolderNameVisible: true,
              isCardNumberVisible: true,
              isExpiryDateVisible: true,
              cardHolderName: widget.cardHolderName,
              expiryDate: widget.expiryDate,
              themeColor: Colors.blue,
              textColor: Colors.black,
              cardNumberDecoration: InputDecoration(
                labelText: 'Card Number',
                hintText: 'XXXX XXXX XXXX XXXX',
                focusedBorder: border,
                enabledBorder: border,
                hintStyle: hintText,
                labelStyle: labelText,
              ),
              expiryDateDecoration: InputDecoration(
                hintStyle: hintText,
                labelStyle: labelText,
                focusedBorder: border,
                enabledBorder: border,
                labelText: 'Expired Date',
                hintText: 'XX/XX',
              ),
              cvvCodeDecoration: InputDecoration(
                hintStyle: hintText,
                labelStyle: labelText,
                focusedBorder: border,
                enabledBorder: border,
                labelText: 'CVV',
                hintText: 'XXX',
              ),
              cardHolderDecoration: InputDecoration(
                hintStyle: hintText,
                labelStyle: labelText,
                focusedBorder: border,
                enabledBorder: border,
                labelText: 'Card Holder',
              ),
              onCreditCardModelChange: onCreditCardModelChange,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ]
    );
  }
}
