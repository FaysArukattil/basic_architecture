import 'package:basic_architecture/views/login/loginview.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  void init() {}
  void navigate(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) {
            return Loginview();
          },
        ),
      );
    });
  }
}
