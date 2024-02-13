import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  String clicks = 'clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Functions Clicks"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: Icon(Icons.refresh_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
            Text('Click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 25),)
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              HapticFeedback.vibrate();
              setState(() {
                clickCounter = 0;
              });
            },
          ),

          const SizedBox(height: 15,),

          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              HapticFeedback.vibrate();
              setState(() {
                clickCounter++;
              });
            },
          ),

          const SizedBox(height: 15,),

          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              HapticFeedback.vibrate();
              setState(() {
                if(clickCounter > 0)
                clickCounter--;
              });
            },
          ),
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}