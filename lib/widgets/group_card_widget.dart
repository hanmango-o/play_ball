import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Card GroupCardWidget(List groupInfo) {
  return Card(
    elevation: 5.0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 13,
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.sports_soccer,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      groupInfo[0].toString(),
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              groupInfo[1].toString(),
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              groupInfo[2].toString(),
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
                        groupInfo[3] ? "가능" : "불가능",
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
        ],
      ),
    ),
  );
}

/*
class GroupCardWidget extends StatefulWidget {
  const GroupCardWidget({Key? key, var groupInfo}) : super(key: key);

  @override
  _GroupCardWidgetState createState() => _GroupCardWidgetState();
}

class _GroupCardWidgetState extends State<GroupCardWidget> {
  
  @override
  Widget build(BuildContext context) {
    
  }
}
*/