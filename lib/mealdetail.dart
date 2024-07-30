import 'package:flutter/material.dart';

class mealdetail extends StatefulWidget {
  const mealdetail({super.key});

  @override
  State<mealdetail> createState() => _mealdetailState();
}

class _mealdetailState extends State<mealdetail> {
  Color x = Colors.grey;
  String text = "ADD TO CART";
  Color y = Color(0xffFF470B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  x = Colors.red;
                });
              },
              icon: Icon(Icons.favorite, size: 30, color: x),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/friedchecken.jpeg'),
                  radius: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xffFF470B),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color.fromARGB(255, 232, 225, 225),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color.fromARGB(255, 232, 225, 225),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color.fromARGB(255, 232, 225, 225),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Spicy fried chicken",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 26),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rs. 350",
                      style: TextStyle(
                          color: Color(0xffFF470B),
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                          height: 2),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "A sizzling taste of the chicken with crunchiness of \nfreshly baked veggeis and garnished with cherry tomatoes\n and basil oil",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Delivery",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Delivered within 30mins from your location*\n if placed now.Cupon Available.",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "reviews",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "  4.4/5",
                      style: TextStyle(
                          color: Color(0xffFF470B),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: y, minimumSize: const Size(310, 70)),
                    onPressed: () {
                      setState(() {
                        y = Colors.green;
                        text = "ADDED";
                      });
                    },
                    child: Text(
                      text,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
