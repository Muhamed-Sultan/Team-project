import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wesla/Widgets/custom_button.dart';

class ContainerScreen5 extends StatelessWidget {
  const ContainerScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 124,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF9F8F2),
            border: Border.all(color: Colors.grey, width: 1),
            boxShadow: [
              BoxShadow(
                color: Color(0xffC2C0B8),
                offset: Offset(0, 4),
                blurRadius: 9,
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xffD0E8D0),
                            child: SvgPicture.asset(
                              'assets/icons/article_person.svg',
                              width: 24,
                              height: 24,
                              colorFilter: const ColorFilter.mode(
                                Color(0xff0D443F),
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'About this need',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Manrope',
                              color: Color(0xff0D443F),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Winter clothes for 50+ children \nfrom local families.',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Manrope',
                      color: Color(0xff0D443F),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 11),
        Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xff0D443F), width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffD0E8D0),
                      child: SvgPicture.asset(
                        'assets/icons/apparel.svg',
                        width: 24,
                        height: 24,
                        colorFilter: const ColorFilter.mode(
                          Color(0xff0D443F),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'What they need?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Manrope',
                        color: Color(0xff0D443F),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: const Color(0xffD0E8D0),
                            child: SvgPicture.asset(
                              'assets/icons/apparel.svg',
                              width: 38,
                              height: 38,
                              colorFilter: const ColorFilter.mode(
                                Color(0xff0D443F),
                                BlendMode.srcIn,
                              ),
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'Children’s\nwinter clothes',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Manrope',
                              color: Color(0xff1A8279),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(width: 2, height: 102, color: Colors.black),

                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: const Color(0xffD0E8D0),
                            child: SvgPicture.asset(
                              'assets/icons/child_care.svg',
                              width: 38,
                              height: 38,
                              colorFilter: const ColorFilter.mode(
                                Color(0xff0D443F),
                                BlendMode.srcIn,
                              ),
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            'Ages\n5–10',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Manrope',
                              color: Color(0xff1A8279),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(width: 2, height: 102, color: Colors.black),

                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: const Color(0xffD0E8D0),
                            child: Icon(
                              Icons.groups,
                              size: 38,
                              color: Color(0xff0D443F),
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            '50+\nchildren',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Manrope',
                              color: Color(0xff1A8279),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                Divider(
                  color: Color(0xff216041),
                  indent: 30,
                  thickness: 2,
                  endIndent: 30,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          height: 85,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffe8f4e6),
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/Spare.png', height: 75, width: 75),

              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Why this is a good match',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff0D443F),
                      ),
                    ),
                    Text(
                      'Your offer matches the clothing\n type age group, and location.',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1A8279),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 5),

              Image.asset('assets/images/P.png', height: 60, width: 60),
            ],
          ),
        ),
        SizedBox(height: 20),
        CustomButton(
          text: 'Help with this need',
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
    );
  }
}
