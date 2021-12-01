import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget TabBarWidget(BuildContext context, int currentPageIndex) {
  return SizedBox(
    width: 230.0,
    height: 50.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            // onTap: _onPlaceBidButtonPress,
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text(
                "PlayBall",
                style: (currentPageIndex == 0)
                    ? const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      )
                    : const TextStyle(
                        color: Colors.grey,
                      ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            // onTap: _onBuyNowButtonPress,
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text(
                "Search",
                style: (currentPageIndex == 1)
                    ? const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      )
                    : const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
