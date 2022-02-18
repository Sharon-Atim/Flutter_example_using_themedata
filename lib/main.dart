import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHome(),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
              .copyWith(secondary: Colors.teal[200]),
          backgroundColor: Colors.grey[900])));
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool isFabPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using ThemeData'),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.teal),
        child: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: isFabPressed
            ? Theme.of(context).colorScheme.secondary
            : Theme.of(context).colorScheme.primary,
        onPressed: () {
          setState(() {
            isFabPressed = !isFabPressed;
          });
        },
        child: const Icon(Icons.brush),
      ),
    );
  }
}
