import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var services = [
    'Broom',
    'Car',
    'Clean House',
    'Clean',
    'Cleaning Tools',
    'Closet',
    'Garbage',
    'Glass',
    'Laundary',
    'Maid',
  ];
  var images = [
    'image/broom.png',
    'image/car.png',
    'image/clean-house.png',
    'image/clean.png',
    'image/cleaning-tools.png',
    'image/closet.png',
    'image/garbage.png',
    'image/glass.png',
    'image/laundry.png',
    'image/maid.png',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: services.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                images[index],
                height: 40.0,
                width: 40.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  services[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
