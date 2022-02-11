// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_ukk/constants/color_constant.dart';
import 'package:project_ukk/constants/font_and_padding.dart';
import 'package:project_ukk/pages/login/login_page.dart';
import 'package:project_ukk/pages/widgets/login_button.dart';
import 'package:project_ukk/pages/widgets/reset_button.dart';
import 'package:project_ukk/pages/widgets/reset_form.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: kPrimaryColor,
            size: 40,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 230,
            ),
            Text(
              'Reset Password',
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please enter your email address',
              style: subTitle.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            ResetForm(),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInPage(),
                      ));
                },
                child: ResetButton(buttonText: 'Reset Password')),
          ],
        ),
      ),
    );
  }
}
