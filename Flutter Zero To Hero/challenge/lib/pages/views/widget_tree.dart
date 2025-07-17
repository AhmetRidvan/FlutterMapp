import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/pages/views/home_page.dart';
import 'package:flutter_app/pages/views/profile_page.dart';
import 'package:flutter_app/pages/views/widgets/navbar_widget.dart';

List<Widget> listem = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: v1,
        builder: (context, value, child) {
          return listem.elementAt(value);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
      appBar: AppBar(
        title: Text('Hi, im Ahmet'),
        actions: [
          ValueListenableBuilder(
            valueListenable: tm,
            builder: (context, value, child) {
              return value == false
                  ? IconButton(
                      onPressed: () {
                        tm.value = !tm.value;
                      },
                      icon: Icon(Icons.dark_mode),
                    )
                  : IconButton(
                      onPressed: () {
                        tm.value = !tm.value;
                      },
                      icon: Icon(Icons.light_mode),
                    );
            },
          ),
        ],
      ),
    );
  }
}
