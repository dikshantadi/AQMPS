import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:aqmps/homepg.dart';
import 'package:aqmps/util/responsive.dart';

class Startpg extends StatefulWidget {
  const Startpg({super.key});

  @override
  State<Startpg> createState() => _StartpgState();
}

class _StartpgState extends State<Startpg> {
  @override
  Widget build(BuildContext context) {
    // to get device size
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);

    final double titleFontSize = isMobile
        ? 30
        : isTablet
            ? 35
            : 40;
    final double subtitleFontSize = isMobile
        ? 15
        : isTablet
            ? 18
            : 19;
    final double buttonWidth = isMobile ? 200 : 250;
    final double buttonHeight = isMobile ? 40 : 50;

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
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Air Quality Monitoring\n",
                        style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                          height: 2,
                        ),
                      ),
                      TextSpan(
                        text: "and Prediction System \n",
                        style: TextStyle(
                          fontSize: subtitleFontSize,
                          fontWeight: FontWeight.w600,
                          height: 2,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Lottie.asset('assets/Pollution.json',
                  height: isMobile
                      ? 250
                      : isTablet
                          ? 280
                          : 300,
                  width: isMobile
                      ? 250
                      : isTablet
                          ? 280
                          : 300),
              const SizedBox(height: 30),
              Container(
                width: buttonWidth,
                height: buttonHeight,
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
                      color: Colors.grey.withOpacity(0.9), // shadow color
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 2), // shadow position
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
                  height: buttonHeight,
                  minWidth: double.infinity,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: isMobile ? 16 : 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
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
