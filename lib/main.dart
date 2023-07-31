import 'package:flutter/material.dart';

import 'inson.dart';

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
  TextEditingController ismController = TextEditingController();
  TextEditingController familiyaController = TextEditingController();
  List<Inson> insonlar = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vazifa"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: ismController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Ism"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: familiyaController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "familiya"),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Inson inson = Inson(
                  ism: ismController.value.text,
                  familiya: familiyaController.value.text);
              setState(() {
                insonlar.add(inson);
              });
            },
            child: Text("Saqlash"),
            color: Colors.blue,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: insonlar.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(insonlar[index].ism),
                        Text(insonlar[index].familiya),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
