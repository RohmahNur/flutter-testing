import 'package:flutter/material.dart';

class OnOffWidget extends StatefulWidget {
  @override
  State<OnOffWidget> createState() => _OnOffWidgetState();
}

class _OnOffWidgetState extends State<OnOffWidget> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isOn ? 'ON' : 'OFF',
              key: const Key('statusText'),
            ),
            ElevatedButton(
              key: const Key('toggleButton'),
              onPressed: () {
                setState(() {
                  isOn = !isOn;
                });
              },
              child: const Text('Toggle'),
            ),
          ],
        ),
      ),
    );
  }
}
