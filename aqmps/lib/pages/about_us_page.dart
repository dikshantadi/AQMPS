// Dont touch

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsPage extends StatelessWidget {
  final Uri _url = Uri.parse('https://github.com/dikshantadi/AQMPS');

  // Function to launch the GitHub URL
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  AboutUsPage({super.key});

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
          children: [
            const SizedBox(height: 40),
            const Center(
              /*
            
              HERO

              */
              child: Text(
                "Air Quality Insights for a Healthier Tomorrow",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
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
            const SizedBox(height: 40),

            /*
            
            OUR GOAL

            */
            const Text(
              "Our Goal",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Awareness is the first step toward change, and by providing real-time monitoring and predictive insights on air quality, we hope to foster safer, healthier communities. Our mission is to empower individuals and communities with accurate air quality data, allowing everyone to make safer and more informed lifestyle choices.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),

            /*
            
            CORE FEATURES

            */
            const Text(
              "Core Features",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.speed),
              title: Text("Real-time Air Quality Monitoring"),
              subtitle: Text(
                  "Get accurate data on air pollutants like NO2, O3, and PM2.5."),
            ),
            const ListTile(
              leading: Icon(Icons.analytics),
              title: Text("Analytics & Insights"),
              subtitle: Text("Analyze data trends for better decision-making."),
            ),
            const ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Health Impact Analysis"),
              subtitle: Text(
                  "Understand the health effects of air quality on your well-being."),
            ),
            const ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications and Alerts"),
              subtitle: Text(
                  "Receive real-time alerts when air quality changes unexpectedly."),
            ),
            const SizedBox(height: 30),

            /*
            
            OUR TEAM

            */
            const Text(
              "Our Team",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Dikshyant Adhikari"),
              subtitle: Text("subtext"),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Aayush Man Shakya"),
              subtitle: Text("subtext"),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Nitin Ghimire"),
              subtitle: Text("subtext"),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Aavash Adhikari"),
              subtitle: Text("subtext"),
            ),

            /*
            
            LINKS

            */
            const Text(
              "Links",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              onTap: _launchUrl,
              leading: const FaIcon(FontAwesomeIcons.github),
              title: const Text("Github"),
            ),
          ],
        ),
      ),
    );
  }
}
