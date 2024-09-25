import 'package:chat_app/chat_detail/chat_detail_header_view.dart';
import 'package:chat_app/chat_detail/message_actions.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  final Map<String, dynamic> data;
  const ChatDetailPage(this.data, {super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Profile info
          ChatDetailHeaderView(widget.data),

          // ListView chatArea
          Expanded(
            child: ListView(
              reverse: true,
              children: [
                sendMessageAction(
                    msg: "When are we seeing and where",
                    time: "10:00",
                    msgStatus: 'seen'),
                receiveMessageWidget(
                  msg: "Yes this is the one ",
                  time: "10:31",
                  image: widget.data['img'],
                ),
                sendImageInChat(
                    msg: "google_office.jpg", time: "10:30", msgStatus: 'o'),
                sendMessageAction(
                    msg: "I'm so happy for you", time: "10:10", msgStatus: 'o'),
                receiveMessageWidget(
                  msg: "I did it finally, Dinner on me",
                  time: "10:05",
                  image: widget.data['img'],
                ),
                sendMessageAction(
                    msg: "Ohh Waao Congratulations ",
                    time: "10:01",
                    msgStatus: 'o'),
                receiveMessageWidget(
                  msg: "Wassup, I cracked the interview at Google ",
                  time: "10:01",
                  image: widget.data['img'],
                ),
                sendMessageAction(msg: "Hey", time: "10:00", msgStatus: "o"),
              ],
            ),
          ),

          // Send Message Area
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            color: Colors.white,
            child: const SafeArea(
              top: false,
              child: Row(
                children: [
                  Icon(
                    Icons.attachment,
                    color: Color(0xffa524c9),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.emoji_emotions_rounded,
                    color: Color(0xffa524c9),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type something",
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.send,
                    color: Color(0xffa524c9),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
