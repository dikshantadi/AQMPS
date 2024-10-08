import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Gauge extends StatelessWidget {
  final double value; // Dynamic value

  const Gauge({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfRadialGauge(
        title: const GaugeTitle(text: "Air Quality Index"),
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 400,
            ranges: <GaugeRange>[
              GaugeRange(
                  startWidth: 20,
                  endWidth: 20,
                  startValue: 0,
                  endValue: 50,
                  color: Colors.greenAccent),
              GaugeRange(
                  startWidth: 20,
                  endWidth: 20,
                  startValue: 50,
                  endValue: 100,
                  color: Colors.yellowAccent),
              GaugeRange(
                  startWidth: 20,
                  endWidth: 20,
                  startValue: 100,
                  endValue: 150,
                  color: Colors.orangeAccent),
              GaugeRange(
                  startWidth: 20,
                  endWidth: 20,
                  startValue: 150,
                  endValue: 200,
                  color: Colors.redAccent),
              GaugeRange(
                  startWidth: 20,
                  endWidth: 20,
                  startValue: 200,
                  endValue: 300,
                  color: Colors.purpleAccent),
              GaugeRange(
                  startWidth: 20,
                  endWidth: 20,
                  startValue: 300,
                  endValue: 400,
                  color: const Color(0xFF800000)),
            ],
            pointers: <GaugePointer>[
              NeedlePointer(value: value), //dynamic value
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Container(
                  child: Text(
                    value.toStringAsFixed(1), // display dynamic value
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                angle: 90,
                positionFactor: 0.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
