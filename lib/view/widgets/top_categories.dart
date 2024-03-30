import 'package:flutter/material.dart';

class TopCategoriesWidget extends StatelessWidget {
  const TopCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 23),
            width: 64,
            height: 62.55,
            decoration: BoxDecoration(
                color: const Color(0xffF17547),
                borderRadius: BorderRadius.circular(7.27),
                border: Border.all(color: const Color(0xffD8D3D380))),
            child: Image.asset("assets/Vector (1).png"),
          ),
          Container(
            margin: const EdgeInsets.only(right: 23),
            width: 64,
            height: 62.55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.27),
                border: Border.all(color: const Color(0xffD8D3D380))),
            child: Image.asset("assets/Vector (2).png"),
          ),
          Container(
            margin: const EdgeInsets.only(right: 23),
            width: 64,
            height: 62.55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.27),
                border: Border.all(color: const Color(0xffD8D3D380))),
            child: Image.asset("assets/Vector (3).png"),
          ),
          Container(
            margin: const EdgeInsets.only(right: 23),
            width: 64,
            height: 62.55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.27),
                border: Border.all(color: const Color(0xffD8D3D380))),
            child: Image.asset("assets/Vector (4).png"),
          ),
          Container(
            margin: const EdgeInsets.only(right: 23),
            width: 64,
            height: 62.55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.27),
                border: Border.all(color: const Color(0xffD8D3D380))),
            child: Image.asset("assets/Vector (5).png"),
          ),
        ],
      ),
    );
  }
}
