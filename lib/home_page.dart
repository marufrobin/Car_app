import 'package:car_app/screen/pages/car.dart';
import 'package:car_app/screen/pages/food.dart';
import 'package:car_app/screen/pages/hotel.dart';
import 'package:car_app/screen/pages/mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [CarDemo(), FoodDemo(), MobileDemo(), HotelDemo()];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[pageIndex],
        bottomNavigationBar: GNav(
            onTabChange: (index) {
              setState(() {
                pageIndex = index;
              });
            },
            rippleColor: Colors.grey.shade800,
            hoverColor: Colors.grey.shade900,
            haptic: true,
            curve: Curves.easeOutExpo,
            duration: Duration(milliseconds: 300),
            gap: 8,
            color: Colors.grey.shade800,
            activeColor: Colors.white,
            iconSize: 24,
            tabBackgroundColor: Colors.blue.withOpacity(0.5),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            tabs: [
              GButton(
                icon: Icons.card_travel,
                text: "Car",
                textStyle: TextStyle(fontSize: 18, color: Colors.white),
              ),
              GButton(
                icon: Icons.food_bank,
                text: "Food",
                textStyle: TextStyle(fontSize: 18, color: Colors.white),
              ),
              GButton(
                icon: Icons.mobile_friendly,
                text: "Mobile",
                textStyle: TextStyle(fontSize: 18, color: Colors.white),
              ),
              GButton(
                icon: Icons.hotel,
                text: "Hotel",
                textStyle: TextStyle(fontSize: 18, color: Colors.white),
              )
            ]),
      ),
    );
  }
}
