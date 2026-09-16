import 'package:flutter/material.dart';
import 'package:wesla/Widgets/app_bar.dart';
import 'package:wesla/Widgets/container_card.dart';
import 'package:wesla/data/container_data_2.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning",
                  style: TextStyle(
                    color: Color(0xff0D443F),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Manrope',
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  maxLines: 1,
                  'How can we help to day?',
                  style: TextStyle(
                    color: Color(0xff0D443F),
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Manrope',
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffFBFAF5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffc2c0b8),
                        offset: Offset(0, 4),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xffDBF1DD),
                          child: Image.asset('assets/images/Spare.png'),
                        ),
                        SizedBox(width: 3),
                        Text(
                          'Tell WESLA what you need\n or can offer...',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Manrope',
                            color: Color(0xff1A8279),
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Color(0xff1D5E54),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 11),
                Row(
                  children: [
                    Text(
                      'Smart Matches for you',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Manrope',
                        color: Color(0xff0D443F),
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Manrope',
                        color: Color(0xff0D443F),
                      ),
                    ),
                    SizedBox(width: 3),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Color(0xff0D443F),
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8),
                    itemCount: containerData2.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: ContainerCard(data: containerData2[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
