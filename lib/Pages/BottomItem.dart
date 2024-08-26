import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomitem extends StatelessWidget {
  const Bottomitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F9FD),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF475269),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFF475269),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: const Row(
              children: [
                Text(
                  "Add To Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.cart_fill_badge_plus,
                  color: Colors.white,
                  size: 32,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF475269),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFF475269),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 45,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
