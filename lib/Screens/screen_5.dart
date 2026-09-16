import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wesla/Widgets/app_bar.dart';
import 'package:wesla/Widgets/container_screen_5.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/B1.png'),
                  SizedBox(height: 10),
                  Text(
                    "Children's clothing needed",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Manrope',
                      color: Color(0xff0D443F),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.apartment_rounded,
                        size: 30,
                        color: Color(0xff216041),
                      ),
                      SizedBox(width: 2),
                      Text(
                        'Verified organization',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Manrope',
                          color: Color(0xff1A8279),
                        ),
                      ),
                      SizedBox(width: 8),
                      SvgPicture.asset(
                        "assets/icons/distance.svg",
                        width: 24,
                        height: 24,
                        colorFilter: const ColorFilter.mode(
                          Color(0xff0D443F),
                          BlendMode.srcIn,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        'Beni Suef- Egypt',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Manrope',
                          color: Color(0xff1A8279),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/schedule.svg",
                        width: 24,
                        height: 24,
                        colorFilter: const ColorFilter.mode(
                          Color(0xffB62002),
                          BlendMode.srcIn,
                        ),
                      ),
                      SizedBox(width: 2),
                      Text(
                        'Urgent · 2 days left',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Manrope',
                          color: Color(0xffB62002),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  ContainerScreen5(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
