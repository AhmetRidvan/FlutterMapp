import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/pages/views/welcome_page.dart';
import 'package:flutter_app/pages/views/widget_tree.dart';
import 'package:flutter_app/widgets/navbar_widget.dart';
//2.33
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: tm,
      builder: (context, value, child) {
        return MaterialApp(
          home: WelcomePage(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.red,
              brightness: value == false ? Brightness.light : Brightness.dark,
            ),
          ),
        );
      },
    );
  }
}
