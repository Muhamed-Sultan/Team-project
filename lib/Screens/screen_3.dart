import 'package:flutter/material.dart';
import 'package:wesla/Widgets/app_bar.dart';
import 'package:wesla/Widgets/container_screen_3.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/S1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                Image.asset("assets/images/A.png"),
                const SizedBox(height: 37),
                const Text(
                  'Your request has been submitted.',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D443F),
                  ),
                ),
                const SizedBox(height: 3),
                const Text(
                  'Our AI will now find the best match for your needs and get back to you soon.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0D443F),
                  ),
                ),
                const SizedBox(height: 15),
                const ContainerScreen3(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
