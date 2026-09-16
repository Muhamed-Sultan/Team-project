import 'package:flutter/material.dart';
import 'package:wesla/Widgets/custom_button.dart';

class ContainerSplash extends StatelessWidget {
  const ContainerSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        image: const DecorationImage(
          image: AssetImage("assets/images/splash.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Column(
        children: [
          const SizedBox(height: 75),

          Image.asset("assets/images/Logo4.png", width: 700),

          const Spacer(),

          SizedBox(
            width: 380,
            height: 55,
            child: CustomButton(
              text: 'Get Started ',
              ontap: () {},
              //  Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const SliderWidget()),
              // ),
              color: const Color(0xff0D443F),
              textcolor: Colors.white,
              textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                fontFamily: 'Manrope',
              ),
            ),
          ),

          const SizedBox(height: 15),

          GestureDetector(
            onTap: () {},
            child: const Text(
              'I already have an account',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: 'Manrope',
                color: Color(0xff0D443F),
              ),
            ),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
