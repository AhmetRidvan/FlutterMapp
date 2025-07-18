import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController t1 = TextEditingController();
  bool? value = false;
  bool switchBool = false;
  double sl = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            Checkbox.adaptive(
              tristate: true,
              value: value,
              onChanged: (x) {
                setState(() {
                  value = x;
                });
              },
            ),
            CheckboxListTile.adaptive(
              tristate: true,
              title: Text('Hi'),
              value: value,
              onChanged: (value) => print('selam'),
            ),
            Switch.adaptive(
              value: switchBool,
              onChanged: (value) {
                switchBool = value;
                setState(() {});
              },
            ),
            SwitchListTile.adaptive(
              title: Text('hi'),
              value: switchBool,
              onChanged: (value) {
                setState(() {
                  switchBool = value;
                });
              },
            ),
            Slider.adaptive(
              value: sl,
              max: 100,
              divisions: 10,
              onChanged: (value) {
                setState(() {
                  sl = value;
                  print(sl);
                });
              },
            ),
            InkWell(
              splashColor: Colors.red,
              onTap: () {
                print('Selam');
              },
              child: Container(height: 100, width: 100, color: Colors.white12),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('asd'),
              style: ElevatedButton.styleFrom(),
            ),
            BackButton(),
            CloseButton(),
            FilledButton(onPressed: () {}, child: Text('asd')),
            OutlinedButton(onPressed: () {}, child: Text('êasd')),
            TextButton(onPressed: () {}, child: Text('ads')),
          ],
        ),
      ),
    );
  }
}
