import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restro_app/components/button.dart';
import 'package:restro_app/pages/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 6,
              ),
              //shop name
              Text(
                "Sushi Shop",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28, color: Colors.white),
              ),
              SizedBox(
                height: 6,
              ),
              //images
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset('assets/salmol_egg.png'),
              ),
              SizedBox(
                height: 4,
              ),

              //title
              Text(
                "THE TASTE OF JAPANESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 40, color: Colors.white),
              ),
              SizedBox(
                height: 2,
              ),
              //subtittle
              Text(
                "Feel the taste of most popular japanese food from anywhere at any time.",
                style: TextStyle(color: Colors.grey[200], height: 2),
              ),
              SizedBox(
                height: 2,
              ),

              //get started button
              MyButton(
                  text: "Get Started",
                  onTap: () {
                    // Need to go in menu  page
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuPage()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
