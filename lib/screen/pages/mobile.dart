import 'package:flutter/material.dart';
class MobileDemo extends StatefulWidget {
  const MobileDemo({super.key});

  @override
  State<MobileDemo> createState() => _MobileDemoState();
}

class _MobileDemoState extends State<MobileDemo> {
  @override
  Widget build(BuildContext context) {
     return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.cyan.shade400,
    );
  }
}