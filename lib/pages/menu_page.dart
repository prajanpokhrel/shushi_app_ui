import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restro_app/components/button.dart';
import 'package:restro_app/components/food_tile.dart';
import 'package:restro_app/models/food_model.dart';
import 'package:restro_app/theme/colors.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  //food menu
  List FoodMenu = [
    Food(
        name: "salmon Egg",
        imgPath: "assets/salmol_egg.png",
        price: "210.00",
        rating: "4.9"),
    Food(
        name: "salmon shushi",
        imgPath: "assets/salmon-shushu.png",
        price: "210.00",
        rating: "4.9"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text("Shushi Shop")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promo banner
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // promo message
                      Text(
                        "Get 32% promo",
                        style: GoogleFonts.dmSerifDisplay(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //redeem button
                      MyButton(
                        text: "Redeem",
                        onTap: () {},
                      ),
                    ],
                  ),
                  //images
                  Image.asset(
                    "assets/many_sushi.png",
                    height: 80,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Search here'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //popular food

          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: FoodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                      food: FoodMenu[index],
                    )),
          ),
          Container(
            child: Row(
              children: [
                //image
                Image.asset(
                  'assets/salmol_egg.png',
                  height: 60,
                ),
                Column(
                  children: [
                    Text(
                      "salmon Eggs",
                      style: GoogleFonts.dmSerifDisplay(fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),

            //heart
          ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}
