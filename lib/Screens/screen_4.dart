import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wesla/Widgets/app_bar.dart';
import 'package:wesla/Widgets/custom_button.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Spare.png',
                  width: 65,
                  height: 65,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 5),
                Text(
                  'We found a  match for you',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Manrope',
                    color: Color(0xff0D443F),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'This opportunity closely matches your needs and location. Take a look!',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Manrope',
                    color: Color(0xff1A8279),
                  ),
                ),
                SizedBox(height: 15),
                Center(child: Image.asset('assets/images/B1.png')),
                SizedBox(height: 5),
                Container(
                  width: 125,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffC6E8CB),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/target_check_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg",
                        width: 34,
                        height: 34,
                        colorFilter: const ColorFilter.mode(
                          Color(0xff0D443F),
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 2),
                      const Text(
                        '94% match',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Manrope',
                          color: Color(0xff0D443F),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 13),
                Center(
                  child: Container(
                    width: 400,
                    height: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffffffff),
                      border: Border.all(color: Color(0xff0D443F), width: 1),
                    ),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Children’s clothing needed',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Manrope',
                                color: Color(0xff1A8279),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Manrope',
                                    color: Color(0xff1A8279),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
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
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Manrope',
                                    color: Color(0xff1A8279),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                            SizedBox(height: 13),
                            Divider(
                              color: Color(0xff216041),
                              thickness: 2,
                              endIndent: 30,
                              indent: 30,
                            ),
                            SizedBox(height: 9),
                            Text(
                              'Winter clothes for 50+ childrenin\n local families.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Manrope',
                                color: Color(0xff1A8279),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Spare.png',
                      width: 70,
                      height: 70,
                    ),
                    Text(
                      'Matched by WASLA AI based on your \nrequest and location.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Manrope',
                        color: Color(0xff216041),
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  text: 'View Match',
                  color: Color(0xff0D443F),
                  textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Manrope',
                    color: Color(0xffffffff),
                  ),
                  ontap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
