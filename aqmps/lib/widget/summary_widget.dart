import 'package:aqmps/widget/AQIdetail.dart';
import 'package:aqmps/widget/Temperaturedetail.dart';
import 'package:aqmps/widget/gauge.dart';
import 'package:flutter/material.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: const Column(
      children: [
        SizedBox(height: 20),
        Gauge(value: 80),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Aqidetail(),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(30.0),
          child: TemperatureDetail(),
        ),
      ], //aile lai dummy
    ));
  }
}
