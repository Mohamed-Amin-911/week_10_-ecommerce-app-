import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 57, vertical: 24),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home_outlined, color: Color(0xffF16A26), size: 25),
          Icon(Icons.favorite_outline_outlined,
              color: Color.fromARGB(120, 0, 0, 0), size: 25),
          Icon(Icons.shopping_cart_outlined,
              color: Color.fromARGB(120, 0, 0, 0), size: 25),
          Icon(Icons.person_3_outlined,
              color: Color.fromARGB(120, 0, 0, 0), size: 25),
        ],
      ),
    );
  }
}
