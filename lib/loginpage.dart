import 'package:flutter/material.dart';
import 'package:market_app/mainpage.dart';

class Loginpage extends StatelessWidget {
  Loginpage({super.key});

  final _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFF4B3A),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  const Text(
                    "Sign in",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 179,
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("Reset password"))
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Form(
                  key: _formGlobalKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffFF4B3A),
                            hintText: "Enter your email",
                            label: const Text("Email"),
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 5.0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            errorStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' You must enter a valid email ';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xffFF4B3A),
                            hintText: "Enter your password",
                            label: const Text(
                              "password",
                            ),
                            labelStyle: const TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 5.00),
                                borderRadius: BorderRadius.circular(30)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30)),
                            errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            errorStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return ' You must enter your password ';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formGlobalKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => mainpage(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            minimumSize: const Size(350, 64)),
                        child: const Text(
                          "Sign In ",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 65,
                  ),
                  Container(
                    width: 120,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "OR",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 120,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize: const Size(350, 64)),
                    child: const Text(
                      "Create an account",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 363,
                    height: 63,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset('assets/images/google.png'),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Sign in with google",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
