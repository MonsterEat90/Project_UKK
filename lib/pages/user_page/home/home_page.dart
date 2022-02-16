import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final int index;
  HomePage(this.index);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.lightBlueAccent,
    );
  }
}
