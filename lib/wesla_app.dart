import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:wesla/Screens/login_screen.dart';
// import 'package:wesla/Screens/register_screen.dart';
// import 'package:wesla/Screens/splash_screen.dart';
// import 'package:wesla/Widgets/slider.dart';
import 'package:wesla/Screens/screen_4.dart';

class WeslaApp extends StatelessWidget {
  const WeslaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF6F2DB),

        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.transparent,
          ),
        ),
      ),

      home: PageView(
        children: const [
          // SplashScreen(),
          // RegisterScreen(),
          // LoginScreen(),
          // SliderWidget(),
          Screen4(),
        ],
      ),
    );
  }
}
