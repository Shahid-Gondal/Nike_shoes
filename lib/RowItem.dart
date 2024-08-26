import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rowitem extends StatelessWidget {
  const Rowitem({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 1; i < 5; i++)
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 15,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 2),
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF475269),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 110,
                        margin: const EdgeInsets.only(
                          right: 60,
                          // top: 15,
                          left: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF475269),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Image.asset(
                        "assets/images/1.png",
                        height: 140,
                        width: 130,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        Text(
                          "Nike Shoe",
                          style: TextStyle(
                            color: Color(0xFF475269),
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Men's Shoe",
                          style: TextStyle(
                            color: Color(0xFF475269),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 70),
                          child: Text(
                            "\$50",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, right: 5),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        CupertinoIcons.cart_fill_badge_plus,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
