import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/screens/home_screen.dart';
import 'package:travel_app/utils/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        fontFamily: "Poppins",
      ),
      home: HomeScreen(),
    );
  }
}
