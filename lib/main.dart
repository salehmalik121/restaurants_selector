import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(RestaurantApp());
}

class RestaurantApp extends StatefulWidget {
  const RestaurantApp({Key? key}) : super(key: key);

  @override
  _RestaurantAppState createState() => _RestaurantAppState();
}

class _RestaurantAppState extends State<RestaurantApp> {
  List<String> restaurants = [
    "McDonald's",
    "Subway",
    "Starbucks",
    "KFC",
    "Burger King",
    "Pizza Hut",
    "Domino’s",
    "Dunkin'",
    "Papa John's Pizza",
  ];
  late int index = restaurants.length + 1;

  @override
  Widget build(BuildContext context) {
    bool check = index != restaurants.length + 1;

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Restaurant Selector"),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "At what restaurant you want to eat ",
                style: TextStyle(fontSize: 18),
              ),
              // ignore: unnecessary_null_comparison

              check
                  ? Text(
                      restaurants[index],
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    )
                  : SizedBox(
                      height: 47,
                    ),

              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: TextButton(
                  onPressed: () {
                    selector();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("SELECT RESTAURANT"),
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.yellow[500])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  int selector() {
    final random = Random();
    int indexrnd = random.nextInt(restaurants.length);
    setState(() {
      index = indexrnd;
    });
    return indexrnd;
  }
}
