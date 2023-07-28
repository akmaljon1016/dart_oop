import 'package:flutter/material.dart';

class IkkinchiOyna extends StatefulWidget {
  const IkkinchiOyna({Key? key}) : super(key: key);

  @override
  State<IkkinchiOyna> createState() => _IkkinchiOynaState();
}

class _IkkinchiOynaState extends State<IkkinchiOyna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ikkinchi Oyna"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Qaytish"),
          color: Colors.red,
        ),
      ),
    );
  }
}
