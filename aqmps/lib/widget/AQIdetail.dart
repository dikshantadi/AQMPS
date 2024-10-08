import 'package:aqmps/widget/Custom_card_widget.dart';
import 'package:flutter/material.dart';

class Aqidetail extends StatefulWidget {
  const Aqidetail({super.key});

  @override
  _AqidetailState createState() => _AqidetailState();
}

class _AqidetailState extends State<Aqidetail> {
  int aqiValue = 80; //initiaial aqi
  Color cardColor = Color(0xFF98FF98); // initial color

  @override
  void initState() {
    super.initState();
    updateAqi();
  }

  void updateAqi() {
    // database wait a moment
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        aqiValue = 80; // new aqi just for example here
        cardColor = getColorForAqi(aqiValue);
      });
    });
  }

  Color getColorForAqi(int aqi) {
    if (aqi <= 50) {
      return Colors.greenAccent;
    } else if (aqi <= 100) {
      return Colors.yellowAccent;
    } else if (aqi <= 150) {
      return Colors.orangeAccent;
    } else if (aqi <= 200) {
      return Colors.redAccent;
    } else if (aqi <= 300) {
      return Colors.purpleAccent;
    } else if (aqi <= 150) {
      return Colors.orangeAccent;
    } else {
      return Color(0xFF800000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: cardColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildDetails("Air Quality Index : ", aqiValue.toString()),
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
