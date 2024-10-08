import 'package:aqmps/models/pollutionmodel.dart';

class PollutionDetail {
  // ignore: non_constant_identifier_names
  final PollutionData = const [
    PollutionModel(
        icon: 'aqmps/assets/Images/co2.jpg',
        value: '0',
        title: "Carbon Dioxide"),
    PollutionModel(
        icon: "aqmps/assets/Images/Carbon-monoxide.png",
        value: '0',
        title: 'Carbon Monoxide'),
    PollutionModel(
        icon: 'aqmps/assets/Images/so2.png',
        value: '0',
        title: "Sulfur Dioxide"),
    PollutionModel(
        icon: 'aqmps/assets/Images/pm2.5.png', value: '0', title: "PM 2.5"),
  ];
}
