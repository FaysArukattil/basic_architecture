import 'package:basic_architecture/views/Home/homeview.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  void init() {}
  void navigate(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Homeview();
          },
        ),
      );
    });
  }
}
