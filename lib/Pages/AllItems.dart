import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoseapp/Pages/ItemPage.dart';

class Allitems extends StatelessWidget {
  const Allitems({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List<Map<String,dynamic>> product=[
      {
        "name":"shoe1",
        "price":"\$50",
        "ProductDiscription":"this is the best brand nike",
        "image":"assets/images/1.png",
      },
      {
        "name":"shoe2",
        "price":"\$55",
        "ProductDiscription":"this is the best brand nike shoes",
        "image":"assets/images/2.png",
      },
      {
        "name":"shoe3",
        "price":"\$70",
        "ProductDiscription":"this is the best brand nike sniker",
        "image":"assets/images/3.png",
      },
      {
        "name":"shoe4",
        "price":"\$60",
        "ProductDiscription":"this is the best brand nike sports",
        "image":"assets/images/4.png",
      },

    ];
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.62,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 0; i < product.length; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.all(8),
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
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Itempage(
                              imagepath:product[i]["image"] ,
                              price: product[i]["price"],
                              name: product[i]["name"],
                            ProductDiscription: 'This is the best brand',),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      product[i]["image"],
                      height: 130,
                      width: 130,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child:  Text(
                      product[i]["name"],
                      style: TextStyle(
                        color: Color(0xFF475269),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child:  Text(
                    product[i]["ProductDiscription"],
                    style: TextStyle(
                      color: Color(0xFF475269),
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        product[i]["price"],
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF475269),
                        ),
                        child: const Icon(
                          CupertinoIcons.cart_fill_badge_plus,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
