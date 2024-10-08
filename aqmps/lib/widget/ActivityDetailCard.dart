import 'package:aqmps/Data/pollution_detail.dart';
import 'package:aqmps/widget/Custom_card_widget.dart';
import 'package:flutter/material.dart';

class Activitydetailcard extends StatelessWidget {
  const Activitydetailcard({super.key});

  @override
  Widget build(BuildContext context) {
    final pollutiondetail = PollutionDetail();
    return GridView.builder(
      itemCount: pollutiondetail.PollutionData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 12),
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
            )
          ],
        ),
      ),
    );
  }
}
