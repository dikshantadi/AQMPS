import 'package:aqmps/Data/pollution_detail.dart';
import 'package:aqmps/util/responsive.dart';
import 'package:aqmps/widget/Custom_card_widget.dart';
import 'package:flutter/material.dart';

class Activitydetailcard extends StatelessWidget {
  final String sensorName;

  const Activitydetailcard({super.key, required this.sensorName});

  @override
  Widget build(BuildContext context) {
    final pollutiondetail = PollutionDetail();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sensorName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          GridView.builder(
            itemCount: pollutiondetail.PollutionData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
              crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (context, index) => CustomCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    pollutiondetail.PollutionData[index].icon,
                    width: 30,
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(pollutiondetail.PollutionData[index].title),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(pollutiondetail.PollutionData[index].value),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(pollutiondetail.PollutionData[index].AQI),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
