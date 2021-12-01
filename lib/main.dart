import 'package:flutter/material.dart';
import 'package:playball/frame/main_frame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.jpeg'), // 배경 이미지
          ),
        ),
        child: SafeArea(child: const MainFrame()),
      ),
    );
  }
}
