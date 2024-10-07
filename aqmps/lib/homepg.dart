import 'package:aqmps/widget/side_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenuWidget(),
              )),
          Expanded(
              flex: 7,
              child: Container(
                color: Colors.blue,
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
              ))
        ],
      ),
    ));
  }
}
