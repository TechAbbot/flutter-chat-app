import 'package:flutter/material.dart';

class ChatDetailHeaderView extends StatelessWidget {
  final Map<String, dynamic> data;
  const ChatDetailHeaderView(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            color: Colors.grey.shade300,
            blurRadius: 3,
            spreadRadius: 3,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Back Button
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
              ),
            ),

            // Profile Detail
            Expanded(
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
                                  border: Border.all(
                                      color: Colors.white, width: 1.5),
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
                        Text(
                          data['Name'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          data["Online"] ? 'Online' : "an hour ago",
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
                ],
              ),
            ),
            const Icon(
              Icons.call,
              color: Color(0xff7002db),
            ),
          ],
        ),
      ),
    );
  }
}
