import 'package:ewallet/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ewallet/splash_screen.dart';


void main() async{
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => runApp(const GPayApp()));
}
ThemeData _darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: ColorResources.black),
    fontFamily: "Poppins",
    useMaterial3: true,
    brightness: Brightness.dark,
  scaffoldBackgroundColor: ColorResources.black
);

ThemeData _lightTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(backgroundColor: ColorResources.white),
    fontFamily: "Poppins",
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorResources.white
);
class GPayApp extends StatelessWidget {
  const GPayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: _darkTheme,
      theme:_lightTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
