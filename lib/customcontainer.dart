//container.dart
import 'package:flutter/material.dart';

// ignore: camel_case_types
class customcontainer extends StatefulWidget {
  final String discountText;
  final String discountSubscript;
  final String offerDetails;

  const customcontainer({
    super.key,
    required this.discountText,
    required this.discountSubscript,
    required this.offerDetails,
    });

  @override
  State<customcontainer> createState() => _customcontainerState();
}

// ignore: camel_case_types
class _customcontainerState extends State<customcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        height: 145,
        margin: const EdgeInsets.only(top: 30,left: 15),
        decoration: BoxDecoration(
            color: const Color(0xffFA4A0C),
            border: Border.all(color: const Color(0xffFA4A0C)),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                Text.rich(
                  TextSpan(
                    text: widget.discountText,
                    style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                    children: [
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(7, -7),
                          child:  Text(
                            widget.discountSubscript,
                            // ignore: deprecated_member_use
                            textScaleFactor: 0.5,
                            style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
             Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: 'on all ',
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    children: [
                      TextSpan(
                        text: widget.offerDetails,
                        style: const TextStyle(fontWeight: FontWeight.w800),
                      ),
                      const TextSpan(
                        text: ' orders\nacross app*',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 10,),
                Text(
                  "valid till 25th Dec,2023",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 10.5),
                )
              ],
            )
          ],
        ));
  }
}
