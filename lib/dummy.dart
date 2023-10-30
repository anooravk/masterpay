import 'package:flutter/material.dart';

class DummyScreen extends StatelessWidget {
  const DummyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Text("DUMMY SCREEN,\n for testing purposes",style: TextStyle(fontFamily: "PoppinsBold"),))
        ],
      ),
    );
  }
}
