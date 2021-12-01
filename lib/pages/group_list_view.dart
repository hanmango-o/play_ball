import 'package:flutter/material.dart';
import 'package:playball/widgets/group_card_widget.dart';
import 'package:playball/widgets/school_info_widget.dart';

class GroupLIstView extends StatefulWidget {
  const GroupLIstView({Key? key}) : super(key: key);

  @override
  _GroupLIstViewState createState() => _GroupLIstViewState();
}

class _GroupLIstViewState extends State<GroupLIstView> {
  List groupInfoArray = [
    ["배드민턴 칠 사람 구해요~!", 1, 3, false],
    ["풋살, 잘하는 분만", 10, 4, true],
    ["족구왕 김족구", 5, 2, true],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: groupInfoArray
          .map(
            (group) => InkWell(
              child: GroupCardWidget(group),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Center(
                        child: Text(
                          "배드민턴 칠 사람 구해요~!",
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
                              Icon(Icons.person, size: 23),
                              SizedBox(width: 8),
                              Text(
                                "그룹 대표",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("김철수"),
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.category, size: 23),
                              SizedBox(width: 8),
                              Text(
                                "종목",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("배드민턴"),
                          ),
                          SizedBox(height: 10),
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
                            child: Card(
                              elevation: 4,
                              child: SizedBox(
                                width: 250,
                                height: 70,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 20),
                                    CircleAvatar(
                                      radius: 15,
                                      child:
                                          Icon(Icons.flag, color: Colors.white),
                                      backgroundColor: Colors.amber,
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "대정중학교",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 5),
                                        Text("풋살, 농구, 배구, 배드민턴"),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.access_time_filled_rounded, size: 23),
                              SizedBox(width: 8),
                              Text(
                                "시간",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("2021년 11월 17일 19:30~22:00"),
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.warning, size: 23),
                              SizedBox(width: 8),
                              Text(
                                "특이사항",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 55.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("모집인원"),
                                      SizedBox(
                                        height: 30.0,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              1.toString(),
                                              style: TextStyle(
                                                fontSize: 30.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text("명"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                VerticalDivider(thickness: 1.0),
                                SizedBox(
                                  height: 55.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("마감일까지"),
                                      SizedBox(
                                        height: 30.0,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              3.toString(),
                                              style: TextStyle(
                                                fontSize: 30.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text("일"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                VerticalDivider(thickness: 1.0),
                                SizedBox(
                                  height: 55.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("장비대여"),
                                      Text(
                                        "불가능",
                                        style: TextStyle(
                                          fontSize: 23.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 400,
                              height: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Text(
                                "참가하기",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          )
          .toList(),
    );
  }
}
