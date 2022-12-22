import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(30)),
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: const CircleAvatar(
              backgroundImage: AssetImage('images/profile_img.jpeg'),
              radius: 100,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: const Text(
              'KWAK HYUN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: 160,
            height: 5,
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Linkify(
              text: "https://github.com/kwakhyun",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              linkStyle: const TextStyle(
                color: Colors.grey,
              ),
              onOpen: (link) async {
                if (await canLaunch(link.url)) {
                  await launch(link.url);
                }
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '프로필 수정',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
