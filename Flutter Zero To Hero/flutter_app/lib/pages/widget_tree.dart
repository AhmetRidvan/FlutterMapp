import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/navbar_widget.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavbarWidget(),
      appBar: AppBar(title: Text('Hi, im Ahmet')),
    );
  }
}
