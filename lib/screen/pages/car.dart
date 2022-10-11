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
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          // snap: true,
          leading: Icon(Icons.menu),
          title: Text("Car"),
          centerTitle: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.30,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
            "https://images.unsplash.com/photo-1580273916550-e323be2ae537?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80",
            fit: BoxFit.cover,
          )),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  margin: EdgeInsets.only(right: 30),
                  // padding: EdgeInsets.only(10),
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 1,
                        width: MediaQuery.of(context).size.width * 0.4,
                        color: Colors.amber,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              "Audi RS7",
                              textScaleFactor: 2,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }
}
