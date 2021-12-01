import 'package:flutter/material.dart';
import 'package:playball/widgets/school_info_widget.dart';

class SchoolList extends StatefulWidget {
  const SchoolList({Key? key}) : super(key: key);

  @override
  _SchoolListState createState() => _SchoolListState();
}

class _SchoolListState extends State<SchoolList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(Icons.room, size: 23),
            SizedBox(width: 8),
            Text(
              "내 주변 개방학교",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                child: SchoolInfoWidget("표선중학교", "농구, 배드민턴", Colors.brown[300]),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Center(
                          child: Text(
                            "표선중학교",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(Icons.room, size: 23),
                                SizedBox(width: 8),
                                Text(
                                  "위치",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "제주특별자치도 서귀포시 표선면 표선중앙로 31, 표선면 표선리 317-1 표선중학교"),
                            ),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(Icons.dashboard_sharp, size: 23),
                                SizedBox(width: 8),
                                Text(
                                  "면적",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("1022m/2, 4개 코트"),
                            ),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(Icons.check_box, size: 23),
                                SizedBox(width: 8),
                                Text(
                                  "가능한 종목",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("농구, 배드민턴"),
                            ),
                            SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(Icons.access_time_filled_rounded,
                                    size: 23),
                                SizedBox(width: 8),
                                Text(
                                  "개방 시간",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "월요일 18:00~22:00\n화요일 18:00~22:00\n수요일 18:00~22:00\n목요일 18:00~22:00\n금요일18:00~22:00"),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              SchoolInfoWidget("대정중학교", "풋살, 농구, 배드민턴", Colors.amber[300]),
            ],
          ),
        ),
      ],
    );
  }
}
