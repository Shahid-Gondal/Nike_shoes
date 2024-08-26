import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Color(0xFFCEDDEE),
                leading: BackButton(
                  color: Color(0xFF475269),
                ),
                actions: [
                  Icon(
                    Icons.more_vert_outlined,
                    color: Color(0xFF475269),
                    size: 30,
                  ),
                ],
              ),
              CircleAvatar(
                radius: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
