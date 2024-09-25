import 'package:flutter/material.dart';

class ChatListItemView extends StatelessWidget {
  final Map<String, dynamic> data;

  const ChatListItemView(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5),
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: data["Selected"] == true
            ? const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff7002db),
                  Color(0xffAF02db),
                ],
              )
            : null,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
          bottom: 10,
        ),
        color: data["Selected"] == true ? const Color(0xfff3f4f9) : null,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // images
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image(
                      image: AssetImage(data['img']),
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: data["Online"]
                      ? Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                            color: data["Online"] ? Colors.green : null,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1.5),
                          ),
                        )
                      : const SizedBox(
                          height: 12,
                          width: 12,
                        ),
                )
              ],
            ),
            const SizedBox(width: 10),
            // Title
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          data['Name'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Text(
                        data['Time'],
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    data['Message'],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),

            // time
          ],
        ),
      ),
    );
  }
}
