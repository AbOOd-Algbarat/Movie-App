import 'package:flutter/material.dart';

import '../View.dart';
import '../pathes/path_images.dart';

class TopMovies extends StatelessWidget {
  const TopMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ImagePath.topmoives.length,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ViweMovie();
                    },
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage(
                        ImagePath.topmoives[index]["image"],
                      ),
                      fit: BoxFit.contain),
                ),
                // child: Image.asset(
                //   ImagePath.nowplaying[index]["image"],
                // ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
