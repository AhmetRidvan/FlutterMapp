import 'package:flutter/material.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.yellow,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int value) {},
          selectedIndex: 0,
          destinations: [
            NavigationDestination(icon: Icon(Icons.add), label: 'Hi'),
            NavigationDestination(icon: Icon(Icons.delete), label: 'No one'),
          ],
        ),
        appBar: AppBar(backgroundColor: Colors.teal, title: Text('Hi')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('asd')],
          ),
        ),
      ),
    );
  }
}
