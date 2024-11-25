import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget> [
    HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // print('Tapped index is ${_selectedIndex}');
    // print(_selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body:
      Center(
          child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        showSelectedLabels: false,
        elevation: 10,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xff00000),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), 
              label: "Home",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled) ),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              label: "SearchBar.dart",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled) ),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              label: "Ticket",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled) ),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              label: "Person",
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled) ),
         ],
      ),
    );
  }
}
