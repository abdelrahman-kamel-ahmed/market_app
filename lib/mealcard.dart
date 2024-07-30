import 'package:flutter/material.dart';
import 'package:market_app/mealdetail.dart';

class MealCard extends StatelessWidget {
  final String mealName;
  final String imagePath;
  final String mealprice;

  const MealCard(
      {super.key,
      required this.mealName,
      required this.imagePath,
      required this.mealprice});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => mealdetail(),
          ),
        );
      },
      child: Container(
        width: 270,
        height: 110,
        margin: const EdgeInsets.only(bottom: 12, left: 15, right: 25, top: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(imagePath),
                      radius: 42,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  mealName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "view details",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  mealprice,
                  style: const TextStyle(
                      color: Color(0xffFA4A0C),
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
