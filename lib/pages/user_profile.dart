import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 23,
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 14),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "홍길동",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(height: 8),
                        Text("in"),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        SizedBox(height: 8),
                        Text("제주특별자치구 서귀포시"),
                      ],
                    ),
                  ],
                ),
                Text("남자 / 24 / 축구, 탁구"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
