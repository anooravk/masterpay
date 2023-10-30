import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SharedPrefs{
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  saveThemeStatus({key,value}) async {
    SharedPreferences pref = await _prefs;
    pref.setBool(key,value);
  }

  getThemeStatus({key}) async {
    SharedPreferences pref = await _prefs;
    bool isLight = await pref.getBool(key)??false;
    Get.changeThemeMode(isLight?ThemeMode.dark:ThemeMode.light );
    return isLight;
  }

}