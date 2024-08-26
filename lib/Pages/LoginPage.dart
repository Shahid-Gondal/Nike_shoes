import 'package:flutter/material.dart';
import 'package:shoseapp/HomePage.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCEDDEE),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image(image: AssetImage("assets/images/login.png")),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
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
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.person,
                            size: 27,
                            color: Color(0xFF475269),
                          ),
                        ),
                        hintText: "Enter Username"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: 55,
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
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.lock,
                            size: 27,
                            color: Color(0xFF475269),
                          ),
                        ),
                        hintText: "Enter Password"),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color(0xFF475269),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Homepage(),
                        ));
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF475269),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF475269).withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? - ",
                    style: TextStyle(
                      color: Color(0xFF475269),
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign_Up",
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
