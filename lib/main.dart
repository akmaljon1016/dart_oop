import 'package:dart_oop/dars.dart';
import 'package:dart_oop/ikkinchi_oyna.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> ismlar = [];
  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Ism"),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  ismlar.add(txtController.value.text);
                });
              },
              child: Text("Saqla"),
              color: Colors.green,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: ismlar.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      color: Colors.green[200],
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      child: Text(ismlar[index]),
                    );
                  }),
            )
          ],
        ));
  }
}
