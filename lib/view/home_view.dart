import 'package:flutter/material.dart';
import 'package:home_cleaning/widgets/grid_tiles.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Cleaning'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _curentIndex,
        onTap: (index) {
          setState(() {
            _curentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
          ),
        ],
      ),
      body: bodyWidgets(),
    );
  }

  bodyWidgets() {
    if (_curentIndex == 0) {
      return GridTiles();
    } else if (_curentIndex == 1) {
      return GridTiles();
    } else if (_curentIndex == 2) {
      return GridTiles();
    } else {
      return GridTiles();
    }
  }
}
