import 'package:aqmps/widget/ActivityDetailCard.dart';
import 'package:aqmps/widget/headerwidget.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 18,
        ),
        Headerwidget(),
        const SizedBox(height: 18),
        Activitydetailcard(),
      ],
    );
  }
}
