import 'package:flutter/material.dart';
import 'package:medical_checkup/core/style/color_style.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Checkup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: Palette.bg,
        ),
        useMaterial3: true,
      ),
      home: Container(),
    );
  }
}
