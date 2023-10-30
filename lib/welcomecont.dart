import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../prefs.dart';

class WelcomeController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    checkSwitch();
  }
  checkSwitch()async{
     isLightTheme.value = await SharedPrefs().getThemeStatus(key: "theme");
     print("is light: ${isLightTheme.value}");
  }
  var isPhone=true.obs;
  var isLightTheme=false.obs;
  var selectedCode='233'.obs;
  final welcomeKey1= GlobalKey();
  final welcomeKey2= GlobalKey();
  var evalid=true.obs;
  var pvalid=true.obs;
  updateEValid(val){
    evalid.value=val;
    update();
  }
  updatePValid(val){
    pvalid.value=val;
    update();
  }
  togglePhone(){
    isPhone.value=!isPhone.value;
    update();
  }
}