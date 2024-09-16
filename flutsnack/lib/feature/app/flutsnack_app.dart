import 'package:flutsnack/feature/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';
import '../../util.dart';

class FlutsnackApp extends StatelessWidget {
  const FlutsnackApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Inter", "Inter");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp(
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const Scaffold(
        body: Dashboard(),
      ),
    );
  }
}
