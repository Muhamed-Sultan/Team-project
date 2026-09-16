import 'package:flutter/material.dart';

class ContainerScreen3 extends StatelessWidget {
  const ContainerScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 260,
          decoration: BoxDecoration(
            color: const Color(0xfff5fbf1),
            border: Border.all(color: const Color(0xffd8e4da)),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30.6,
                        backgroundColor: const Color(0xffdef0e1),
                        child: Image.asset(
                          'assets/images/2.png',
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 15),

                      Column(
                        children: [
                          const Text(
                            'Your request',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff0D443F),
                            ),
                          ),
                          const SizedBox(height: 3),
                          const Text(
                            'I Need Help',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff81908d),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 70),

                      Container(
                        width: 110,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffDFF6E4),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/Spare.png",
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(width: 2),
                            const Text(
                              'AI Powered',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Manrope',
                                color: Color(0xff216041),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  const Divider(color: Colors.grey, thickness: 1.5),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.track_changes_rounded,
                        color: Color(0xff0D443F),
                        size: 30,
                      ),

                      const SizedBox(width: 15),

                      const Text(
                        'Need type',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4b605b),
                        ),
                      ),

                      const SizedBox(width: 15),

                      const Text(
                        'Support for children',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff546763),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on_rounded,
                        color: Color(0xff0D443F),
                        size: 30,
                      ),

                      const SizedBox(width: 15),

                      const Text(
                        'Location',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4b605b),
                        ),
                      ),

                      const SizedBox(width: 15),

                      const Text(
                        'Beni Suef',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff546763),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.group_rounded,
                        color: Color(0xff0D443F),
                        size: 30,
                      ),

                      const SizedBox(width: 15),

                      const Text(
                        'For',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4b605b),
                        ),
                      ),

                      const SizedBox(width: 15),

                      const Text(
                        "Children's clothing needed",
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff546763),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),

        Container(
          height: 75,
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

              const Text(
                'We\'re working behind the scenes\n'
                'to find the right support for you.',
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff65847e),
                ),
              ),

              const SizedBox(width: 5),

              Image.asset('assets/images/P.png', height: 60, width: 60),
            ],
          ),
        ),
      ],
    );
  }
}
