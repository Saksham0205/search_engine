import 'package:flutter/material.dart';
import 'package:search_engine/colors.dart';
import 'package:search_engine/responsive_layout_screen/mobile_screen_layout.dart';
import 'package:search_engine/responsive_layout_screen/responsive_screen.dart';
import 'package:search_engine/responsive_layout_screen/web_screen_laout.dart';
import 'package:search_engine/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Search Engine',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home:ResponsiveScreen(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),));
  }
}
