import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:counter/counter.dart';

class PlayerSet extends StatefulWidget {
  const PlayerSet({super.key});

  @override
  State<PlayerSet> createState() => _PlayerSetState();
}

class _PlayerSetState extends State<PlayerSet> {
  String start = 'START';
  int number = 1;

  void _startButton() {
    //Counter(min: min, max: max);
    setState(() {
      if (start == 'START') {
        start = 'FINISH';
      } else
        start = 'START';
    });
  }

  void _NextButton() {
    number += 1;
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    Set<MaterialState> states;

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: height / 6,
        decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid,
            color: const Color.fromARGB(204, 176, 174, 174),
          ),
        ),
        child: ListView(
          children: <Widget>[
            Text(
              'Game $number',
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Align(
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    const Size(200, 40),
                  ),
                ),
                onPressed: _startButton,
                child: Text(start),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _NextButton,
                      child: const Text('Next'),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('END'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
