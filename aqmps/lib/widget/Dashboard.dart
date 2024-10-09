import 'package:aqmps/util/responsive.dart';
import 'package:aqmps/widget/ActivityDetail2.dart';
import 'package:aqmps/widget/ActivityDetail3.dart';
import 'package:aqmps/widget/ActivityDetail4.dart';
import 'package:aqmps/widget/ActivityDetailCard1.dart';
import 'package:aqmps/widget/BargraphWidget.dart';
import 'package:aqmps/widget/headerwidget.dart';
import 'package:aqmps/widget/summary_widget.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 18,
          ),
          Headerwidget(),
          SizedBox(height: 18),
          Activitydetailcard1(sensorName: "Sensor 1"),
          SizedBox(height: 18),
          Activitydetailcard2(sensorName: "Sensor 2"),
          SizedBox(height: 18),
          Activitydetailcard3(sensorName: "Sensor 3"),
          SizedBox(height: 18),
          Activitydetailcard4(sensorName: "Prediction"),
          SizedBox(height: 18),
          Bargraphcard(),
          SizedBox(height: 18),
          if (Responsive.isTablet(context)) SummaryWidget()
        ],
      ),
    );
  }
}
