import 'package:flutter/material.dart';
import 'package:movie_app/movie_home_page/coming_soon.dart';
import 'package:movie_app/movie_home_page/top_movies.dart';
import 'package:movie_app/widgets/bottombar.dart';

import 'movie_home_page/playing_now.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0Xff2E1371), Color(0xff130B2B)]),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              children: [
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    "Choose Your Movie",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins-Bold.ttf",
                        fontSize: 35,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Container(
                    width: 343,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0xff767680).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.white.withOpacity(0.5),
                                size: 25,
                              ),
                            ),
                            Text(
                              "Search",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontFamily: "Poppins-Thin.ttf",
                                fontSize: 17,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 200),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  "assets/images/microphone-black-shape.png",
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Top Movies",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins-Regular.ttf",
                        fontSize: 25),
                  ),
                ),
                const TopMovies(),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Playing Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins-Regular.ttf",
                        fontSize: 25),
                  ),
                ),
                const PlayingNow(),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Coming Soon",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins-Regular.ttf",
                        fontSize: 25),
                  ),
                ),
                //page
                const ComingSoon(),
              ],
            ),
            //widget bottom bar
            const BottomTabBar(),
          ],
        ),
      ),
    );
  }
}
