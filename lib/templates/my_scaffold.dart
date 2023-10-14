import 'package:burger_sauce/constants/route.dart';
import 'package:flutter/material.dart';

class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int _selectedIndex = 1;
  PageController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _onTap(int index) {
    _changePageIndex(index);

    _controller?.animateToPage(
      _selectedIndex,
      duration: const Duration(milliseconds: 100),
      curve: Curves.ease,
    );
  }

  void _changePageIndex(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: routes.map((e) => e.page).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: true,
        items: routes.map((e) => e.item).toList(),
        currentIndex: _selectedIndex,
        onTap: _onTap,
      ),
    );
  }
}
