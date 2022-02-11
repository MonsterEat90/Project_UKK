// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_ukk/constants/color_constant.dart';

class SignUpButton extends StatelessWidget {
  final String buttonText;
  SignUpButton({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(50),
          color: kPrimaryColor,
          child: Center(
            child: MaterialButton(
              child: Text(
                buttonText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
              minWidth: MediaQuery.of(context).size.width,
              onPressed: () {
                print('Signup button pressed');
              },
            ),
          ),
        ),
      ),
    );
  }
}
