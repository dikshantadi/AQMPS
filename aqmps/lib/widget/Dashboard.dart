import 'package:aqmps/widget/ActivityDetailCard.dart';
import 'package:aqmps/widget/BargraphWidget.dart';
import 'package:aqmps/widget/headerwidget.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          Headerwidget(),
          SizedBox(height: 18),
          Activitydetailcard(sensorName: "Sensor 1"),
          SizedBox(height: 18),
          Activitydetailcard(sensorName: "Sensor 2"),
          SizedBox(height: 18),
          Activitydetailcard(sensorName: "Sensor 3"),
          SizedBox(height: 18),
          Activitydetailcard(sensorName: "Prediction"),
          SizedBox(height: 18),
          Bargraphcard(),
        ],
      ),
    );
  }
}
