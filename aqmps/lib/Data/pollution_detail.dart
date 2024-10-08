import 'package:aqmps/models/pollutionmodel.dart';

class PollutionDetail {
  // ignore: non_constant_identifier_names
  final PollutionData = const [
    PollutionModel(
        icon: 'assets/Images/co.png', value: '0', title: "Carbon Monoxide"),
    PollutionModel(icon: "assets/Images/dust.png", value: '0', title: 'Dust'),
    PollutionModel(
        icon: 'assets/Images/no2.png', value: '0', title: "Nitrogen Dioxide"),
    PollutionModel(
        icon: 'assets/Images/so2(1).png', value: '0', title: "Sulfer Dioxide"),
  ];
}
