import 'package:flutter/material.dart';

import './responsive/responsive_layou.dart';
import './screens/mobile_layout_screen.dart';
import './screens/web_layout_screen.dart';

import 'colors.dart';

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
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileLayoutScreen(),
        webcreenLayout: WeblLayoutScreen(),
      ),
    );
  }
}
