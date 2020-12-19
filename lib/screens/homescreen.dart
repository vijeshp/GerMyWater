import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'homeScreen';
  @override
  createState() => _HomeScreen();
}


/// This is the private State class that goes with MyStatefulWidget.
class _HomeScreen extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Orders',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border,size: 40),
              title:Text("Order"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history,size: 40),
              title:Text("Order History"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_missed_outgoing,size: 40,),
              title:Text("Profile"),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
