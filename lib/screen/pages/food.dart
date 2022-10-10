import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FoodDemo extends StatefulWidget {
  const FoodDemo({super.key});

  @override
  State<FoodDemo> createState() => _FoodDemoState();
}

class _FoodDemoState extends State<FoodDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blueAccent.shade400,
    );
  }
}
