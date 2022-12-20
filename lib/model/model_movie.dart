import 'package:cloud_firestore/cloud_firestore.dart';

class Movie {
  final String title;
  final String keyword;
  final String opening_date;
  final String age;
  final String running_time;
  final String desc;
  final String poster;
  final bool like;
  final DocumentReference reference;

  Movie.fromMap(Map<String, dynamic> map, {required this.reference})
      : title = map['title'],
        keyword = map['keyword'],
        opening_date = map['opening_date'],
        age = map['age'],
        running_time = map['running_time'],
        desc = map['desc'],
        poster = map['poster'],
        like = map['like'];

  Movie.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>,
            reference: snapshot.reference);

  @override
  String toString() => 'Movie<$title:$keyword>';
}
