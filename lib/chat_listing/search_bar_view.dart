import 'package:flutter/material.dart';

class SearchbarView extends StatelessWidget {
  const SearchbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            // Linear Gradiant Color of top
            Color(0xff7002db),
            Color(0xffff08ff),
          ],
        ),
      ),
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: const EdgeInsets.only(
            left: 20,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45.withOpacity(0.4),
                  blurRadius: 2,
                  spreadRadius: 3,
                  offset: const Offset(2, 2),
                )
              ]),
          child: const TextField(
            // change here
            style: TextStyle(color: Colors.green),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search...",
              hintStyle: TextStyle(color: Colors.black),
            ),
            cursorWidth: 2.5,
            cursorRadius: Radius.circular(2.5),
            cursorOpacityAnimates: true,
          ),
        ),
      ),
    );
  }
}
