import 'package:flutter/material.dart';

import '../widgets/player_set.dart';
import 'package:intl/intl.dart';

class UserScreen extends StatelessWidget {
  final String date = DateFormat.yMMMMEEEEd().format(DateTime.now());
  UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$date records'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const PlayerSet();
        },
        itemCount: 7,
      ),
    );
  }
}
