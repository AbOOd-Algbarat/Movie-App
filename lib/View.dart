import 'package:flutter/material.dart';

import 'widgets/bottombar.dart';

class ViweMovie extends StatefulWidget {
  const ViweMovie({super.key});

  @override
  State<ViweMovie> createState() => _ViweMovieState();
}

class _ViweMovieState extends State<ViweMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0Xff242167), Color(0xff29133D)]),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(55),
              child: Text(
                "Mobile Information",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Poppins-Bold.ttf",
                    fontSize: 35,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const Text(
              "Trail",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins-Bold.ttf",
                  fontSize: 40,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset("assets/images/backg 3.png"),
            Container(
              width: 50,
              height: 50,
              child: Row(
                // ignore: sort_child_properties_last
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff7C62D6),
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
