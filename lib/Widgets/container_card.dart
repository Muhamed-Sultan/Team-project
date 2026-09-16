import 'package:flutter/material.dart';
import 'package:wesla/models/containter_model_2.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({super.key, required this.data});

  final ContainerData2 data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xffF9F8F2),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffC2C0B8),
            offset: Offset(0, 4),
            blurRadius: 12,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              data.image,
              width: 75,
              height: 75,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Manrope',
                    color: Color(0xff0D443F),
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  data.location,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Manrope',
                    color: Color(0xff1A8279),
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  data.time,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Manrope',
                    color: Color(0xffB62002),
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  data.suptitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Manrope',
                    color: Color(0xff1A8279),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 5),

          SizedBox(
            width: 60,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffDFF6E4),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 12,
                        color: Color(0xff216041),
                      ),
                      SizedBox(width: 2),
                      Text(
                        'Verified',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Manrope',
                          color: Color(0xff216041),
                        ),
                      ),
                    ],
                  ),
                ),

                const Icon(
                  Icons.arrow_forward_rounded,
                  color: Color(0xff216041),
                  size: 27,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
