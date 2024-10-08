import 'dart:ui';

import 'package:aqmps/models/graphmodel.dart';

class Bargraphmodel {
  final String label;
  final Color color;
  final List<Graphmodel> graph;

  const Bargraphmodel(
      {required this.label, required this.color, required this.graph});
}
