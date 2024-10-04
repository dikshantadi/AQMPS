import 'package:aqmps/homepg.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Startpg extends StatefulWidget {
  const Startpg({super.key});

  @override
  State<Startpg> createState() => _StartpgState();
}

class _StartpgState extends State<Startpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF00C9FF), // Light sky blue
                Color(0xFF92FE9D), // Light green
                Color(0xFFA18CD1), // Soft lavender
              ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "WELCOME TO \n",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          height: 2,
                        ),
                      ),
                      TextSpan(
                        text: "Air Quality Monitoring and Prediction System \n",
                        style: TextStyle(
                          fontSize: 19,
                          height: 2,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Lottie.asset('assets/Pollution.json', height: 300, width: 300),
              const SizedBox(height: 30),
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF00B4D8), // Light ocean blue
                      Color(0xFF90E0EF), // Soft teal
                      Color(0xFF90E0EF), // Light aqua
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9), // Shadow color
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 2), // Shadow position
                    ),
                  ],
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepg()),
                    );
                  },
                  height: 50,
                  minWidth: double.infinity,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2, // Spacing between letters
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
