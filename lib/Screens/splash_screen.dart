import 'package:flutter/material.dart';
import 'package:wesla/Widgets/container_splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: ContainerSplash(),
    );
  }
}
