import 'package:flutter/material.dart';
import 'package:movie_app/View.dart';

import '../pathes/path_images.dart';

class PlayingNow extends StatelessWidget {
  const PlayingNow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ImagePath.playingnow.length,
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
                        ImagePath.playingnow[index]["image"],
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
