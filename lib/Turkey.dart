import 'package:flutter/material.dart';

class Turkey extends StatefulWidget {
  const Turkey({super.key});

  @override
  TurkeyState createState() => TurkeyState();
}

class TurkeyState extends State<Turkey> {
  static const names = ['Roast Turkey', 'Turkey Burger', 'Turkey Carcass Soup'];
  static const images = [
    'assets/turkey.jpeg',
    'assets/turkeyburger.jpg',
    'assets/turkey3.jpg'
  ];
  static const instructions = [
    'assets/turkey1instruc.png',
    'assets/turkey2realisntructions.png',
    'assets/turkey3instructions.png'
  ];
  static const ingredients = [
    'assets/turkey1ingre.png',
    'assets/turkey2instru.png',
    'assets/t3ingred.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            gesturething(0),
            const SizedBox(
              height: 50,
            ),
            gesturething(1),
            const SizedBox(
              height: 50,
            ),
            gesturething(2),
          ],
        ),
      ),
    );
  }

  Widget gesturething(int x) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return fooditem(x);
            },
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            images[x],
            height: 200,
            width: 300,
          ),
          Text(
            names[x],
            style: TextStyle(fontSize: 25, color: Colors.brown[800]),
          ),
        ],
      ),
    );
  }

  Widget fooditem(int x) {
    return SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          images[x],
          height: 300,
          width: 650,
        ),
        Text(
          'Ingredients',
          style: TextStyle(
              fontSize: 30,
              decoration: TextDecoration.none,
              color: Colors.brown[900]),
        ),
        Image.asset(
          ingredients[x],
          height: 500,
          width: 300,
        ),
        Text(
          'Instructions',
          style: TextStyle(
              fontSize: 30,
              decoration: TextDecoration.none,
              color: Colors.brown[900]),
        ),
        Image.asset(
          instructions[x],
          height: 500,
          width: 500,
        ),
      ],
    ));
  }
}

//https://www.woolha.com/tutorials/flutter-display-and-adjust-images-from-assets
