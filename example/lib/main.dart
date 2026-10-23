import 'package:fbutton/fbutton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FButtonDemo(),
    );
  }
}

class FButtonDemo extends StatefulWidget {
  const FButtonDemo({Key? key}) : super(key: key);

  @override
  State<FButtonDemo> createState() => _FButtonDemoState();
}

class _FButtonDemoState extends State<FButtonDemo> {
  bool _disabled = false;
  String _lastAction = '-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FButton Demo'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('last action: $_lastAction'),
              const SizedBox(height: 30),
              FButton(
                text: 'Click me',
                style: const TextStyle(color: Colors.white),
                color: Colors.blue,
                height: 46,
                corner: FCorner.all(10),
                onPressed: () => setState(() => _lastAction = 'click'),
                onLongPress: () => setState(() => _lastAction = 'long press'),
              ),
              const SizedBox(height: 20),
              FButton(
                text: 'Gradient',
                style: const TextStyle(color: Colors.white),
                gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.blue],
                ),
                disabledColor: Colors.grey,
                height: 46,
                corner: FCorner.all(10),
                onPressed: _disabled ? null : () {},
              ),
              const SizedBox(height: 20),
              FButton(
                text: 'Loading',
                style: const TextStyle(color: Colors.white),
                color: Colors.orangeAccent,
                height: 46,
                corner: FCorner.all(23),
                loading: true,
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              FButton(
                text: 'Stroke',
                style: const TextStyle(color: Colors.blue),
                color: Colors.transparent,
                strokeWidth: 2,
                strokeColor: Colors.blue,
                height: 46,
                corner: FCorner.all(10),
                onPressed: () {},
              ),
              const SizedBox(height: 30),
              FButton(
                text: _disabled ? 'Enable' : 'Disable',
                style: const TextStyle(color: Colors.white),
                color: Colors.blueGrey,
                height: 40,
                corner: FCorner.all(8),
                onPressed: () => setState(() => _disabled = !_disabled),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
