import 'package:flutter/material.dart';

class UserChat extends StatefulWidget {
  const UserChat({Key? key}) : super(key: key);

  @override
  _UserChatState createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionPanelList(
          elevation: 0,
          animationDuration: Duration(milliseconds: 1000),
          children: [
            ExpansionPanel(
              backgroundColor: Colors.grey[300],
              headerBuilder: (context, isExpanded) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(width: 8),
                    Icon(Icons.mark_chat_read_rounded, size: 20),
                    SizedBox(width: 8),
                    Text(
                      "활성화된 채팅",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              },
              body: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: Text("아직 아무것도 없어요.\n채팅으로 그룹에 문의하세요!",
                      style: TextStyle(color: Colors.black)),
                ),
              ),
              isExpanded: _expanded,
              canTapOnHeader: true,
            ),
          ],
          dividerColor: Colors.grey,
          expansionCallback: (panelIndex, isExpanded) {
            _expanded = !_expanded;
            setState(() {});
          },
        ),
      ],
    );
  }
}
