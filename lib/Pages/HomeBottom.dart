import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoseapp/Pages/profile.dart';

class Homebottom extends StatefulWidget {
  const Homebottom({super.key});

  @override
  State<Homebottom> createState() => _HomebottomState();
}

class _HomebottomState extends State<Homebottom> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: const BoxDecoration(
        color: Color(0xFF475269),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.category_outlined,
            color: Colors.white,
            size: 32,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                backgroundColor: const Color(0xFFCEDDEE),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 500,
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 20),
                   child: Column(
                     children: [
                       Container(
                         height: 100,
                         decoration:BoxDecoration(
                           color: Color(0xFFCEDDEE),
                           boxShadow: [
                             BoxShadow(
                               color: Color(0xFF475269),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                  );
                },
              );
            },
            child: const Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 32,
            ),
          ),
          const Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 32,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
            },
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
