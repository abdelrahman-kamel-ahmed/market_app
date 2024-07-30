import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 364,
                      height: 366,
                      decoration: BoxDecoration(
                        color: const Color(0xff333333),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 50,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Name :",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "abdelrahman kamel",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color(0xffFF4B3A),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "E-Mail :",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "kamelabdelrahman73@gmail.com",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xffFF4B3A),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Adress :",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Maddi/cairo",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color(0xffFF4B3A),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Phone :",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "01002186999",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color(0xffFF4B3A),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "DOB :",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "31/12/2003",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color(0xffFF4B3A),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Pass :",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "******************",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color(0xffFF4B3A),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.white,
                                    decorationThickness: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      top: -60,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage('assets/images/Me.jpg'),
                      ),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: 366,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8,
                        right: 20,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Icon(
                        Icons.settings,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 180),
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: 366,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8,
                        right: 20,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Icon(
                        Icons.history,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 180),
                      child: Text(
                        "History",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 15,
              ),
              child: Container(
                width: 366,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8,
                        right: 20,
                        top: 8,
                        bottom: 8,
                      ),
                      child: Icon(
                        Icons.info,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 155),
                      child: Text(
                        "About App",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
