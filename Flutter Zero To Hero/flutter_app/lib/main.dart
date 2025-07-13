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
        appBar: AppBar(),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: ListTile(title: Text('asd'))),
              Text('asd'),
              Text('asd'),
              Text('asd'),
              Text('asd'),
              Text('asd'),
              Text('asd'),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                print('Hi');
              },
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.text_decrease_outlined),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int value) {},
          selectedIndex: 0,
          destinations: [
            NavigationDestination(icon: Icon(Icons.add), label: 'Hi'),
            NavigationDestination(icon: Icon(Icons.delete), label: 'No one'),
          ],
        ),

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
