import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _buttonColor = Colors.blue;

  void _changeColor() {
    setState(() {
      _buttonColor = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Exemplo setState')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _changeColor();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_buttonColor),
            ),
            child: const Text('Mudar a cor'),
          ),
        ),
      ),
    );
  }
}
