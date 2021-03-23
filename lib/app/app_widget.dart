import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Modular + MobX nullsafe',
        theme: ThemeData(primarySwatch: Colors.blue),
      ).modular();
}
