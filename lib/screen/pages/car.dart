import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CarDemo extends StatefulWidget {
  const CarDemo({super.key});

  @override
  State<CarDemo> createState() => _CarDemoState();
}

class _CarDemoState extends State<CarDemo> {
  List<String> imageName = [
    "images/car1.jpeg",
    "images/car2.webp",
    "images/car3.webp"
  ];
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
              background: Image.asset(
            imageName[1],
            fit: BoxFit.cover,
          )),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              CardOfPoduct(context, imageName[0], "Audi RS7"),
              CardOfPoduct(context, imageName[1], "BMW M5 CS"),
              CardOfPoduct(context, imageName[2], "AMG GT"),
              CardOfPoduct(context, imageName[0], "Audi RS7"),
              CardOfPoduct(context, imageName[0], "Audi RS7"),
            ],
          ),
        )
      ],
    );
  }

  Column CardOfPoduct(
      BuildContext context, String imageLinkString, String productName) {
    return Column(
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
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // here will the Picture
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.width * 0.35,
                  color: Colors.amber,
                  child: Image.asset(
                    imageLinkString,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Text(
                        productName,
                        // textScaleFactor: 3,
                        style: TextStyle(fontSize: 25),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text(
                            "London",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Text(
                            "4.5",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "(342 reviews)",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 20, 2, 136),
                        ),
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.height * 0.12,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "1500\$",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),
                            ),
                            Text(
                              "/day",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
