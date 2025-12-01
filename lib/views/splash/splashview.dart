import 'package:basic_architecture/views/splash/splashviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onDispose: (viewModel) {},
      onViewModelReady: (viewModel) {
        viewModel.navigate(context);
      },

      viewModelBuilder: () {
        return SplashViewModel();
      },
      builder:
          (BuildContext context, SplashViewModel viewModel, Widget? child) {
            return Scaffold(
              body: Center(
                child: Text(
                  'Splash View',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
    );
  }
}
