import 'package:flutter/material.dart';
class HotelDemo extends StatefulWidget {
  const HotelDemo({super.key});

  @override
  State<HotelDemo> createState() => _HotelDemoState();
}

class _HotelDemoState extends State<HotelDemo> {
  @override
  Widget build(BuildContext context) {
     return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.teal.shade400,
    );
  }
}