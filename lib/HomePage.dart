import 'package:flutter/material.dart';
import 'package:shoseapp/Pages/AllItems.dart';
import 'package:shoseapp/Pages/HomeBottom.dart';
import 'package:shoseapp/RowItem.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(8)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      padding: const EdgeInsets.all(5),
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
                      child: const Icon(
                        Icons.sort,
                        color: Color(0xFF475269),
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      padding: const EdgeInsets.all(5),
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
                      child: const Icon(
                        Icons.notification_important,
                        color: Color(0xFF475269),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: 370,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F9FD),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF475269).withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search, color: Color(0xFF475269),),
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Color(0xFF475269),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
              const SizedBox(height: 30,),
              const Rowitem(),
              const SizedBox(height: 30,),
              const Allitems(),

            ],
          ),
        ),
      ),
      bottomNavigationBar: const Homebottom(),
    );
  }
}
