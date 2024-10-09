import 'package:aqmps/widget/Custom_card_widget.dart';
import 'package:flutter/material.dart';

class TemperatureDetail extends StatefulWidget {
  const TemperatureDetail({super.key});

  @override
  _TemperatureDetailState createState() => _TemperatureDetailState();
}

class _TemperatureDetailState extends State<TemperatureDetail> {
  double temperatureValue = 25.0;
  Color cardColor = Colors.lightBlueAccent;

  @override
  void initState() {
    super.initState();
    updateTemperature();
  }

  void updateTemperature() {
    //temperature data from the database wait
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        temperatureValue = 25.0; // new temperature just for example here
        cardColor = getColorForTemperature(temperatureValue);
      });
    });
  }

  Color getColorForTemperature(double temperature) {
    if (temperature <= 15) {
      return Colors.blueAccent;
    } else if (temperature <= 25) {
      return Colors.greenAccent;
    } else if (temperature <= 35) {
      return Colors.orangeAccent;
    } else {
      return Colors.redAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: cardColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildDetails("Temperature: ", "${temperatureValue.toString()}°C"),
        ],
      ),
    );
  }

  buildDetails(String key, String value) {
    return Column(
      children: [
        Text(key,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            )),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        )
      ],
    );
  }
}
