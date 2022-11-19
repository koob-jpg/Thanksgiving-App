import 'package:flutter/material.dart';

class Dessert extends StatefulWidget {
  const Dessert({super.key});

  @override
  DessertState createState() => DessertState();
}

class DessertState extends State<Dessert> {
  static const names = ['Pumpkin Pie', 'Pecan Pie', 'Caramel Apple Ice Cream'];
  static const images = [
    'assets/pumpkin pie.jpg',
    'assets/pecan pie.jpg',
    'assets/caramelicecream.jpg'
  ];
  static const instructions = [
    'assets/pumpkinpieinstructions.png',
    'assets/pecanpieinstructions.png',
    'assets/caramelapplecreaminstructions.png'
  ];
  static const ingredients = [
    'assets/pumpkinpieingredients.png',
    'assets/pecanpieingredients.png',
    'assets/caramelappleicecreamingredients.png'
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
