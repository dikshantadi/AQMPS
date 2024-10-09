import 'package:aqmps/models/bargraphmodel.dart';
import 'package:aqmps/models/graphmodel.dart';
import 'package:flutter/material.dart';

class Bargraphdata {
  final data = [
    const Bargraphmodel(
        label: "Carbon Monoxide",
        color: Color(0xFF007BFF),
        graph: [
          Graphmodel(x: 0, y: 8),
          Graphmodel(x: 1, y: 10),
          Graphmodel(x: 2, y: 7),
          Graphmodel(x: 3, y: 9),
          Graphmodel(x: 4, y: 8),
          Graphmodel(x: 5, y: 9),
          Graphmodel(x: 6, y: 8),
        ]), //aile lai random value
    const Bargraphmodel(label: "Dust", color: Colors.grey, graph: [
      Graphmodel(x: 0, y: 8),
      Graphmodel(x: 1, y: 10),
      Graphmodel(x: 2, y: 7),
      Graphmodel(x: 3, y: 9),
      Graphmodel(x: 4, y: 8),
      Graphmodel(x: 5, y: 9),
      Graphmodel(x: 6, y: 8),
    ]),
    const Bargraphmodel(label: "Nitrogen Dioxide", color: Colors.green, graph: [
      Graphmodel(x: 0, y: 8),
      Graphmodel(x: 1, y: 10),
      Graphmodel(x: 2, y: 7),
      Graphmodel(x: 3, y: 9),
      Graphmodel(x: 4, y: 8),
      Graphmodel(x: 5, y: 9),
      Graphmodel(x: 6, y: 8),
    ]),
    const Bargraphmodel(
        label: "Sulfer Dioxide",
        color: Color(0xFFFFD700),
        graph: [
          Graphmodel(x: 0, y: 8),
          Graphmodel(x: 1, y: 10),
          Graphmodel(x: 2, y: 7),
          Graphmodel(x: 3, y: 9),
          Graphmodel(x: 4, y: 8),
          Graphmodel(x: 5, y: 9),
          Graphmodel(x: 6, y: 8),
        ]),
    const Bargraphmodel(
        label: "Temperature °C",
        color: Colors.redAccent,
        graph: [
          Graphmodel(x: 0, y: 18),
          Graphmodel(x: 1, y: 20),
          Graphmodel(x: 2, y: 23),
          Graphmodel(x: 3, y: 19),
          Graphmodel(x: 4, y: 21),
          Graphmodel(x: 5, y: 25),
          Graphmodel(x: 6, y: 30),
        ])
  ];
}
