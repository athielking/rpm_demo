import 'package:flutter/material.dart';
import 'package:rpm_demo/models/screen_params.dart';
import 'package:rpm_demo/ui/detector_widget.dart';

/// [HomeView] stacks [DetectorWidget]
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenParams.screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      key: GlobalKey(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/tfl_logo.png',
          fit: BoxFit.contain,
        ),
      ),
      body: const DetectorWidget(),
    );
  }
}
