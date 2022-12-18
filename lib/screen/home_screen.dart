import 'package:flutter/material.dart';
import 'package:netflutter/model/model_movie.dart';
import 'package:netflutter/widget/carousel_slider.dart';
import 'package:netflutter/widget/circle_slider.dart';
import 'package:netflutter/widget/square_slider.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '아바타: 물의 길',
      'keyword': '액션/스릴러/판타지',
      'poster': 'avatar_poster.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '아바타: 물의 길',
      'keyword': '액션/스릴러/판타지',
      'poster': 'avatar_poster.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '아바타: 물의 길',
      'keyword': '액션/스릴러/판타지',
      'poster': 'avatar_poster.jpeg',
      'like': false
    }),
    Movie.fromMap({
      'title': '아바타: 물의 길',
      'keyword': '액션/스릴러/판타지',
      'poster': 'avatar_poster.jpeg',
      'like': false
    })
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: [
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        SquareSlider(movies: movies)
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/flutter_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '찜한 콘텐츠',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
