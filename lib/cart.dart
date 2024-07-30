import 'package:flutter/material.dart';
import 'package:market_app/mainpage.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 150),
              child: Text(
                "Orders",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 22),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Avocado.png',
                width: 180,
                height: 180,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NO Orders Yet",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 24),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hit the orange button down \n   below to Create an order",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 137, 136, 136)),
              )
            ],
          ),
        ),
         FilledButton(
          
          style:  const ButtonStyle(
            minimumSize: MaterialStatePropertyAll(Size(314, 70)),
            backgroundColor: MaterialStatePropertyAll(
              Color(0xffFA4A0C),
 
            )
          ),
          onPressed: () {
            setState(() {
             Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => mainpage(),
                              ),
                            );
            });
          },
          child: const Text(
            "Start Ordering",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w900, color: Colors.white),
          ),
        )
      ],
    );
  }
}
