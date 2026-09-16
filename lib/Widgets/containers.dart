import 'package:flutter/material.dart';

import 'package:wesla/models/container_model.dart';

class Containers extends StatefulWidget {
  final ContainerModel model;

  const Containers({super.key, required this.model});

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  bool isHovering = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final model = widget.model;

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovering = false;
        });
      },
      child: InkWell(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => ServiceDetailsScreen(model: model),
          //   ),
          // );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 180,
          height: 195,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: (isHovering || isSelected)
                ? const Color(0xff0D8279)
                : const Color(0xffF6F2DB),
            border: Border.all(color: const Color(0xff03322E), width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffE0E6C5),
                  ),
                  child: Center(
                    child: Image.asset(
                      model.image,
                      width: 42,
                      height: 42,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Text(
                  model.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Manrope',
                    color: (isHovering || isSelected)
                        ? Colors.white
                        : const Color(0xff0D443F),
                  ),
                ),

                const SizedBox(height: 6),

                Expanded(
                  child: Text(
                    model.suptitle,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Manrope',
                      color: (isHovering || isSelected)
                          ? Colors.white
                          : const Color(0xff0D443F),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    size: 28,
                    color: (isHovering || isSelected)
                        ? Colors.white
                        : const Color(0xff0D443F),
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
