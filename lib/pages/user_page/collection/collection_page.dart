// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_ukk/constants/color_constant.dart';
import 'package:project_ukk/pages/user_page/collection/card_collection.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLightRedColor,
        title: Text('My Collection'),
      ),
    );
  }
}
