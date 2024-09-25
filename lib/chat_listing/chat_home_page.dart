import 'package:chat_app/chat_listing/chat_list_item_view.dart';
import 'package:chat_app/chat_listing/search_bar_view.dart';
import 'package:chat_app/chat_detail/chat_detail_page.dart';
import 'package:flutter/material.dart';

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({super.key});

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  List<Map<String, dynamic>> chatListing = [
    {
      "img": "images/ai1.jpg",
      "Selected": true,
      "Name": "Julian Dasliva",
      "Online": true,
      "Message": "Hi julian, see You after Work?",
      "Time": "now",
    },
    {
      "img": "images/ai2.webp",
      "Name": "Mike Lyne  ",
      "Online": true,
      "Message": "I must tell you my interview this",
      "Time": "3 min ago",
    },
    {
      "img": "images/ai3.jpg",
      "Name": "Claris Kumas",
      "Online": false,
      "Message": "Yes i do this to you in this week",
      "Time": "5 min ago",
    },
    {
      "img": "images/ai4.webp",
      "Selected": true,
      "Name": "Blair Dota",
      "Online": true,
      "Message": "By the way, did not see my dog",
      "Time": "20 min ago",
    },
    {
      "img": "images/ai5.webp",
      "Name": "Molly Clark",
      "Online": false,
      "Message": "Yes I'm so happy",
      "Time": "1 hour ago",
    },
    {
      "img": "images/ai6.jpeg",
      "Name": "Ashley Williams",
      "Online": false,
      "Message": "Foolowup with Kyle and ping me",
      "Time": "2 hour ago",
    },
    {
      "img": "images/ai7.jpeg",
      "Name": "Parth Kapoor",
      "Online": true,
      "Message":
          "I will be there within 10 mins, make sure you purchase needed things so we wont be late.",
      "Time": "1 day ago",
    },
    {
      "img": "images/ai8.jpg",
      "Name": "Eriq P",
      "Online": false,
      "Message": "Never tried it before and it went so long bro",
      "Time": "2 hour ago",
    },
    {
      "img": "images/ai9.jpg",
      "Name": "Emilie Lee",
      "Online": true,
      "Message": "hahaha she asked me for date and guess what",
      "Time": "1 day ago",
    },
    {
      "img": "images/ai10.jpg",
      "Name": "Soca Remo",
      "Online": false,
      "Message": "Bro let's go to pub",
      "Time": "1 day ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //SearchBar
          const SearchbarView(),

          // Chat listing area
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Message Arrival Message
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Messages",
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "You have 2 new Messages",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      var data = chatListing[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatDetailPage(data)));
                        },
                        child: ChatListItemView(data),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 0,
                        color: Color(
                          0xfff3f4f9,
                        ),
                      );
                    },
                    itemCount: chatListing.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Color(0xffa524c9),
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_sharp,
            ),
            label: "home",
          ),
        ],
      ),
    );
  }
}
