
import 'package:bookley_appp/const.dart';
import 'package:bookley_appp/features/presentation/view/splashView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home:  const SplashView(),
    );
  }
}

