import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: const [
            SizedBox(height: 40),
            Center(
              child: Text(
                "Air Quality Insights for a Healthier Tomorrow",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Center(
                child: Text(
                  "Accurate and timely air quality data for a healthier community",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Our Goal",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Awareness is the first step toward change, and by providing real-time monitoring and predictive insights on air quality, we hope to foster safer, healthier communities. Our mission is to empower individuals and communities with accurate air quality data, allowing everyone to make safer and more informed lifestyle choices.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Core Features",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.speed),
              title: Text("Real-time Air Quality Monitoring"),
              subtitle: Text(
                  "Get accurate data on air pollutants like NO2, O3, and PM2.5."),
            ),
            ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Analytics & Insights"),
              subtitle: Text("Analyze data trends for better decision-making."),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Health Impact Analysis"),
              subtitle: Text(
                  "Understand the health effects of air quality on your well-being."),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications and Alerts"),
              subtitle: Text(
                  "Receive real-time alerts when air quality changes unexpectedly."),
            ),
          ],
        ),
      ),
    );
  }
}
