import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController t1 = TextEditingController();
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(
            controller: t1,
            onEditingComplete: () {
              print('Selam');
              setState(() {});
            },
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          Text(t1.text),
          Checkbox(
            tristate: true,
            value: value,
            onChanged: (x) {
              setState(() {
                value = x;
              });
            },
          ),
          CheckboxListTile(
            tristate: true,
            title: Text('Hi'),
            value: value,
            onChanged: (value) => print('selam'),
          ),
        ],
      ),
    );
  }
}
