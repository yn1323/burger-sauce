import 'package:burger_sauce/constants/route.dart';
import 'package:flutter/material.dart';

class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int _selectedIndex = 0;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: routes[_selectedIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: true,
        // showUnselectedLabels: true,
        items: routes.map((e) => e.item).toList(),
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(
            () => _selectedIndex = index,
          );
        },
      ),
    );
  }
}
