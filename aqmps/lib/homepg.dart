import 'package:aqmps/widget/Dashboard.dart';
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
          const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenuWidget(),
              )),
          const Expanded(flex: 7, child: Dashboard()),
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
