import 'package:flutter/material.dart';

import '../main.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0Xff6B55B5), Color(0xff130B2B)]),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const MyHomePage();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              print("Youe In Location Page");
            },
            icon: const Icon(
              Icons.location_disabled,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              print("Youe In Category Page");
            },
            icon: const Icon(
              Icons.category,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              print("Youe In Profile Page");
            },
            icon: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
