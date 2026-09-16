import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wesla/Widgets/container_screen_3.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

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
