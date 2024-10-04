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
                Color(0xFF00C9FF), //light sky blue
                Color(0xFF92FE9D), //light green
                Color(0xFFA18CD1), //soft lavandar
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
                          color: Colors.black,
                          height: 2,
                        ),
                      ),
                      TextSpan(
                        text: "Air Quality Monitoring and Prediction System \n",
                        style: TextStyle(
                          fontSize: 19,
                          height: 2,
                          color: Colors.black,
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
                    colors: [Colors.black87, Colors.black54, Colors.black45],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepg()),
                    );
                  },
                  height: 45,
                  minWidth: 15,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
