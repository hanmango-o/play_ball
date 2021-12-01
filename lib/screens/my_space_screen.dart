import 'package:flutter/material.dart';
import 'package:playball/pages/school_list.dart';
import 'package:playball/pages/user_chat.dart';
import 'package:playball/pages/user_group.dart';
import 'package:playball/pages/user_profile.dart';

class MySpaceScreen extends StatefulWidget {
  const MySpaceScreen({Key? key}) : super(key: key);

  @override
  _MySpaceScreenState createState() => _MySpaceScreenState();
}

class _MySpaceScreenState extends State<MySpaceScreen> {
  final List<Widget> spaceCard = <Widget>[
    const UserProfile(),
    const UserChat(),
    const UserGroup(),
    const SchoolList(),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: spaceCard.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: spaceCard[index],
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        thickness: 8,
        color: Colors.black26,
      ),
    );
  }
}
