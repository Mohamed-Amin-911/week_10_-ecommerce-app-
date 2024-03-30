import 'package:flutter/material.dart';
import 'package:section_task/view/screens/product_screen.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.price,
      required this.index});
  final int index;
  final String title;
  final String image;
  final String price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductScreen(index: index),
            ));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
        width: 147,
        height: 204,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "50% OFF",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      color: Colors.black),
                ),
                Image.asset("assets/fav.png")
              ],
            ),
            const SizedBox(height: 5),
            Image.network(
              image,
              width: 175.99,
              height: 118,
              fit: BoxFit.fill,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black),
            ),
            Row(
              children: [
                Image.asset("assets/Group 586.png"),
                const SizedBox(width: 2),
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 13,
                      color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
