import 'package:flutter/material.dart';
import 'package:netflutter/model/model_movie.dart';

class SquareSlider extends StatelessWidget {
  final List<Movie> movies;
  SquareSlider({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('인기 콘텐츠'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeSquareImages(movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeSquareImages(List<Movie> movies) {
  List<Widget> results = [];
  for (int i = 0; i < movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('images/' + movies[i].poster),
            ),
          ),
        ),
      ),
    );
  }
  return results;
}
