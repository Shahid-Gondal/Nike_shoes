import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoseapp/Pages/BottomItem.dart';

class Itempage extends StatelessWidget {
  final String imagepath;
  final String price;
  final String name;
  final String ProductDiscription;

  const Itempage({
    super.key,
    required this.imagepath,
    required this.price,
    required this.name,
    required this.ProductDiscription,
  });

  BoxDecoration get decoration => BoxDecoration(
        color: const Color(0xFFF5F9FD),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF475269),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: decoration,
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFF475269),
                          size: 25,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: decoration,
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.43,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 230,
                      width: 230,
                      margin: const EdgeInsets.only(top: 20, right: 70),
                      decoration: BoxDecoration(
                        color: const Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF475269),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      imagepath,
                      height: 350,
                      width: 350,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Color(0xFF475269),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemSize: 23,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.redAccent,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ),
                    const SizedBox(height: 20),
                     Text(
                      ProductDiscription,
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          "Size",
                          style: TextStyle(
                            color: Color(0xFF475269),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Row(
                          children: [
                            for (int i = 5; i < 10; i++)
                              Container(
                                height: 35,
                                width: 35,
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                decoration: decoration,
                                child: Text(
                                  i.toString(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Bottomitem(),
    );
  }
}
