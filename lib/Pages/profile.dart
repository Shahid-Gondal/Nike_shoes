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
                radius: 70,
                backgroundImage: AssetImage("assets/images/pro.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Shahid Gondal",
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
                "+923076893835",
                style: TextStyle(
                  color: Color(0xFF475269),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shadowColor: WidgetStatePropertyAll(Colors.black),
                      backgroundColor: WidgetStatePropertyAll(Colors.black)),
                  onPressed: () {},
                  child: Text(
                    "Edite Profile",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F9FD),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Favorite",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F9FD),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.note_alt,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Billing Detail",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F9FD),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.manage_accounts_outlined,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "User Mangment",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F9FD),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.perm_device_information_sharp,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.black, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F9FD),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF475269),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Setting",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  fixedSize: WidgetStatePropertyAll(
                    Size(130, 20),
                  ),
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
