import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title:'counter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CounterPage(),
   );
  }
}

class CounterPage extends StatefulWidget{
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage>{
  int count = 0;

  void increment(){
    setState(() {
      count++;
    });
  }

  void decrement(){
    setState(() {
      count--;
    });
  }

  void reset(){
    setState(() {
      count = 0;
    });
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter APP')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $count' ,
              style: const TextStyle(fontSize: 48),
            ),

            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: decrement, child: const Text('-')),

                const SizedBox(width: 16),
                ElevatedButton(onPressed: reset, child: const Text('Reset')),

                const SizedBox(width: 16),
                ElevatedButton(onPressed: increment, child: const Text('+')),

              ],
            )
          ],
        ),
      ),
    );
  }

  




}
