import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Interaction Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void _handleTap() {
      // ignore: avoid_print
      print("Container tapped");
    
  }

  void _handleTapGesture() {
    // ignore: avoid_print
    print("GestureDetector tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Interaction Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Enter Text',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration:const InputDecoration(
                labelText: 'Enter Form Text',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: _handleTapGesture,
              child: Container(
                padding:const EdgeInsets.all(16.0),
                color: Colors.blue,
                child: const Text('Tap me - GestureDetector', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: _handleTap,
              child: Container(
                padding:const EdgeInsets.all(16.0),
                color: Colors.green,
                child:const Text('Tap me - InkWell', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
