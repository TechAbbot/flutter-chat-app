import 'package:flutter/material.dart';

Widget sendMessageAction(
    {required String msg, required String time, required String msgStatus}) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // sent text Message
        Container(
          margin: const EdgeInsets.only(
            left: 50,
            right: 5,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: const LinearGradient(colors: [
                Color(0xff7002db),
                Color(0xffa524c9),
              ])),
          child: Text(
            msg,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),

        const SizedBox(
          height: 5,
        ),

        //Time and Icon
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                time,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            Container(
              child: (msgStatus == 'deliver')
                  ? const Icon(
                      Icons.done,
                      size: 10,
                    )
                  : (msgStatus == 'seen')
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: const Image(
                            image: AssetImage('images/ai1.jpg'),
                            height: 13,
                          ),
                        )
                      : null,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget receiveMessageWidget(
    {required String msg, required String time, required String image}) {
  return Container(
    margin: const EdgeInsets.only(
      right: 10,
      left: 10,
      top: 10,
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Image(
            image: AssetImage(image),
            height: 30,
            width: 30,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                margin: const EdgeInsets.only(
                  right: 30,
                  left: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  msg,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  time,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget sendImageInChat(
    {required String msg, required String time, required String msgStatus}) {
  return Container(
    // height: 200,
    decoration: const BoxDecoration(
      color: Colors.transparent,
    ),
    margin: const EdgeInsets.only(right: 10),
    child: Column(
      children: [
        // Images Area
        Container(
          height: 200,
          alignment: Alignment.centerRight,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage("images/$msg"),
            ),
          ),
        ),

        // image time area
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                time,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
                child: (msgStatus == 'seen')
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: const Image(
                          image: AssetImage('images/ai1.jpg'),
                          height: 13,
                        ),
                      )
                    : (msgStatus == 'deliver')
                        ? const Icon(
                            Icons.done,
                            size: 12,
                          )
                        : null)
          ],
        )
      ],
    ),
  );
}
