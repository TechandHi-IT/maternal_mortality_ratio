import 'package:flutter/material.dart';
import 'package:maternal_mortality_ratio/screens/learn.dart';
import 'package:maternal_mortality_ratio/screens/nearest_hospital.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: const [
             Learn(),
            NearestHospital(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black54,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_library),
            label: 'Learn',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.masks),
            label: 'Nearest Hospitals',
          ),
          
        ],
      ),
    );
  }
}
