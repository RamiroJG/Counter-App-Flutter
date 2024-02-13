import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;
  String clicks = 'clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen Clicks"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text('$clicks', style: const TextStyle(fontSize: 25),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  () {
          setState(() {
            clickCounter = clickCounter + 1;
            if(clickCounter == 0){
              clicks = "clicks";
            }else if(clickCounter >= 2){
              clicks = "clicks";
            }
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}