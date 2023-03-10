import 'package:flutter/material.dart';
import 'package:netflutter/model/model_movie.dart';
import 'package:netflutter/screen/detail_screen.dart';

class CircleSlider extends StatelessWidget {
  final List<Movie> movies;
  const CircleSlider({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('미리보기'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImages(movies, context),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeCircleImages(List<Movie> movies, BuildContext context) {
  List<Widget> results = [];
  for (int i = 0; i < movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return DetailScreen(
                movie: movies[i],
              );
            },
            fullscreenDialog: true,
          ));
        },
        child: Container(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: NetworkImage(movies[i].poster),
              radius: 48,
            ),
          ),
        ),
      ),
    );
  }
  return results;
}
