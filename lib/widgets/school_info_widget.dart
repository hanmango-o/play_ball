import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Card SchoolInfoWidget(String schoolName, String sports, var color) {
  return Card(
    child: SizedBox(
      width: 210,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 8),
          CircleAvatar(
            radius: 30,
            child: Icon(Icons.flag, color: Colors.white),
            backgroundColor: color,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                schoolName,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(sports),
            ],
          )
        ],
      ),
    ),
  );
}
