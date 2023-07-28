import 'package:flutter/material.dart';

import 'sayohat.dart';

class Dars extends StatefulWidget {
  const Dars({Key? key}) : super(key: key);

  @override
  State<Dars> createState() => _DarsState();
}

class _DarsState extends State<Dars> {
  List<Sayohat> sayohatlar = [
    Sayohat("assets/newyork.jpeg", "NewYor"),
    Sayohat("assets/paris.jpg", "Paris"),
  ];

//  a=true?Colors.blue:Colors.orange
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lisview.builder"),
      ),
      body: ListView.separated(
        itemCount: sayohatlar.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image.asset(
              sayohatlar[index].rasm,
            ),
            title: Text(sayohatlar[index].text),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 1,
            color: Colors.black,
          );
        },
      ),
    );
  }
}
