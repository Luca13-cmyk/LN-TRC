import 'package:flutter/material.dart';
import 'package:lntrc/screen/text_recognition_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reconhecimento de texto em imagens',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const TextRecognitionScreen(),
    );
  }
}
