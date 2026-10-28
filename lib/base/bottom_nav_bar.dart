// ignore_for_file: constant_identifier_names

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/home_screen.dart';

// Compatibility class mapping the video's FluentSystemIcons to modern fluentui_system_icons
class FluentSystemIcons {
  static const IconData ic_fluent_home_regular = FluentIcons.home_24_regular;
  static const IconData ic_fluent_home_filled = FluentIcons.home_24_filled;
  static const IconData ic_fluent_search_regular = FluentIcons.search_24_regular;
  static const IconData ic_fluent_search_filled = FluentIcons.search_24_filled;
  static const IconData ic_fluent_ticket_regular = FluentIcons.ticket_diagonal_24_regular;
  static const IconData ic_fluent_ticket_filled = FluentIcons.ticket_diagonal_24_filled;
  static const IconData ic_fluent_person_regular = FluentIcons.person_24_regular;
  static const IconData ic_fluent_person_filled = FluentIcons.person_24_filled;
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // list of screens to show
  final appScreens = [
    const HomeScreen(),
    const Center(child: Text("Search")),
    const Center(child: Text("Tickets")),
    const Center(child: Text("Profile")),
  ];

  // change index for BottomNavigationBar
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
