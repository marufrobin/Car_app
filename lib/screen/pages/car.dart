import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CarDemo extends StatefulWidget {
  const CarDemo({super.key});

  @override
  State<CarDemo> createState() => _CarDemoState();
}

class _CarDemoState extends State<CarDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.deepOrangeAccent.shade400,
    );
  }
}
