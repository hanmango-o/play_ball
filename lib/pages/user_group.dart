import 'package:flutter/material.dart';
import 'package:playball/widgets/group_card_widget.dart';

class UserGroup extends StatefulWidget {
  const UserGroup({Key? key}) : super(key: key);

  @override
  _UserGroupState createState() => _UserGroupState();
}

class _UserGroupState extends State<UserGroup> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(Icons.view_list, size: 23),
            SizedBox(width: 8),
            Text(
              "나의 그룹 목록",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.add)
          ],
        ),
        const SizedBox(height: 8),
        // PageView(),
        GroupCardWidget(["축구친구 찾아요", 10, 7, false]),
        GroupCardWidget(["화요일 저녁엔 탁구", 3, 7, true]),
        GroupCardWidget(["오늘 족구할 사람??", 1, 1, false]),
      ],
    );
  }
}
