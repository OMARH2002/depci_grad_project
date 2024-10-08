
import 'package:depci_grad_project/Pages/Records_Nav.dart';
import 'package:flutter/material.dart';

import 'Profie_Screen.dart';
import 'Veichles_Nav.dart';
import 'home_page.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomePage(), // Your HomePage widget
          VeichlesNav(), // Your VeichlesNav widget
          RecordsNav(), // Your RecordsNav widget
          ProfileScreen(), // Your ProfileScreen widget
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Vehicles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Records',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
