import 'package:flutter/material.dart';

// ignore: camel_case_types
class customcontainer2 extends StatelessWidget {
  const customcontainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 385,
      height: 150,
      margin: const EdgeInsets.only(left: 15, top: 20),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff333333)),
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff333333)),
      child: const Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "use code",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "iloveMyfood",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontSize: 24),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text.rich(
                TextSpan(
                  text: 'to get',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                  children: [
                    TextSpan(
                      text: " 10% OFF ",
                      style: TextStyle(color: Color(0xffFA4A0C)),
                    ),
                    TextSpan(
                      text: 'on your orders',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
