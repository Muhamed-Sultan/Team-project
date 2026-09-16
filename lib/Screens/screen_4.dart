import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,

        flexibleSpace: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Screen1()),
                  // );
                },
                icon: const Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),

              Transform.translate(
                offset: const Offset(-30, 0),
                child: Transform.scale(
                  scale: 2.7,
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "assets/images/logo1.png",
                    width: 90,
                    height: 40,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(width: 143),
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Color(0xfffefaef),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/notifications_unread_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg",
                    width: 34,
                    height: 34,
                    colorFilter: const ColorFilter.mode(
                      Color(0xff0D443F),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: Color(0xff77AC5B),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                  color: Color(0xffffffff),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                    width: double.infinity,
                    height: 198,
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
                            SizedBox(height: 7),
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
                            SizedBox(height: 7),
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
                          ],
                        ),
                      ),
                    ),
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
