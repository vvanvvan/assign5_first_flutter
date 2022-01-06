import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),

      body:
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Container(
          decoration: BoxDecoration(color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(10),
              //// border: Border.all(width: 5.0, color: Colors.blue),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: const Offset(2.0, 5.0),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ]),
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              //ยืดcolumnให้เท่าคอนเท้น
              ////crossAxisAlignment: CrossAxisAlignment.stretch, ขยายเต็มจอแนวนอน
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 70,
                      ),
                      child:
                          Image.asset('images/guess_logo.png', height: 160.0),
                    ),
                    Text(
                      "GUESS",
                      style: TextStyle(fontSize: 70, color: Colors.yellowAccent.withOpacity(1.0)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 80,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 100,
                        ),
                        child: Text(
                          "THE NUMBER",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 160, vertical: 60),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      ////labelText: 'Enter your username',
                    ),
                  ),
                ),
                SizedBox(
                    width: 100, // <-- Your width
                    height: 50, // <-- Your height
                    child: ElevatedButton(
                      child: Text("GUESS", style: TextStyle(fontSize: 20)),
                      onPressed: () {}, ////โค้ดที่จะทำงานเมื่อกดปุ่ม
                    ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
