import 'package:flutter/material.dart';
import 'package:market_app/cart.dart';
import 'package:market_app/customcontainer.dart';
import 'package:market_app/customcontainer2.dart';
import 'package:market_app/mealcard.dart';
import 'package:market_app/profile.dart';

// ignore: camel_case_types, must_be_immutable
class mainpage extends StatefulWidget {
  mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

// ignore: camel_case_types
class _mainpageState extends State<mainpage> {
// ignore: unused_field
  final List<String> _categories = [
    "Food",
    "Drinks",
    "Snacks",
    "Sauce",
    "sweets"
  ];

  final List<String> _mealnames = [
    "Baked Rice",
    "Rice Bowl",
    "Fried Rice",
    "fried chicken"
  ];

  final List<String> _images = [
    "assets/images/bakedrice2.jpeg",
    "assets/images/ricebowl.webp",
    "assets/images/friedrice.jpeg",
    "assets/images/friedchecken.jpeg"
  ];
  final List<String> mealprice = [
    "Rs. 199",
    "Rs. 150",
    "Rs. 75",
    "Rs. 350",
  ];

  int selectedindex = 0, selectedinexs = 0;
  List<Widget> screens = [
    const Profile(),
    mainpage(),
    const cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Container(
          width: 260,
          height: 40,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 234, 231, 231),
            border: Border.all(
              color: const Color.fromARGB(255, 234, 231, 231),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.search,
                size: 30,
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                "Search",
                style: TextStyle(fontWeight: FontWeight.w200),
              )
            ],
          ),
        ),
        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/Me.jpg'),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.trolley),
            ),
            label: "cart",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
            label: "profile",
          ),
        ],
        currentIndex: selectedinexs,
        selectedItemColor: const Color(0xffFA4A0C),
        onTap: (value) {
          setState(() {
            selectedinexs = value;
          });
        },
      ),
      body:  selectedinexs == 0
          ? mainpagebody()
          : selectedinexs == 1
              ? const cart()
              : const Profile(),

    );
  }
  Widget mainpagebody(){
        
        return Column(
        children: [
          const Row(
            children: [
              customcontainer(
                  discountText: "25%",
                  discountSubscript: "off",
                  offerDetails: "sushi"),
              customcontainer(
                  discountText: "50%",
                  discountSubscript: "off",
                  offerDetails: "Mac n cheese")
            ],
          ),
          const Row(
            children: [customcontainer2()],
          ),
          const SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                for (int i = 0; i < _categories.length; i++)
                  custombutton(
                    text: _categories[i],
                    isSelected: selectedindex == i,
                    onPressed: () {
                      setState(() {
                        selectedindex = i;
                      });
                    },
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _mealnames.length,
              itemBuilder: (context, index) {
                return MealCard(
                  mealName: _mealnames[index],
                  imagePath: _images[index],
                  mealprice: mealprice[index],
                );
              },
            ),
          )
        ],
      );
      }
  Widget custombutton(
      {required String text, bool isSelected = false, Function()? onPressed}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: OutlinedButton(
        style: isSelected
            ? OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 195, 196, 199),
                foregroundColor: Colors.white,
                side: const BorderSide(
                  color: Colors.white,
                ),
              )
            : OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(
                    color: Color.fromARGB(255, 228, 225, 225))),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Color(0xffFA4A0C)),
        ),
      ),
    );
  }
}
