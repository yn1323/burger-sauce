import 'package:burger_sauce/constants/route.dart';
import 'package:burger_sauce/constants/widgets/properties.dart';
import 'package:flutter/material.dart';

class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int _selectedIndex = 2;
  PageController? _controller;
  // ページ履歴を保持するリスト
  final List<int> _pageHistory = [];

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
    if (_selectedIndex != index) {
      _pageHistory.add(_selectedIndex);
      _changePageIndex(index);

      _controller?.animateToPage(
        _selectedIndex,
        duration: const Duration(milliseconds: 100),
        curve: Curves.ease,
      );
    }
  }

  void _changePageIndex(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_pageHistory.isNotEmpty) {
          int previousPage = _pageHistory.removeLast();
          _changePageIndex(previousPage);
          _controller?.jumpToPage(previousPage);
          return false; // Prevent the back button from closing the app
        }
        return true; // Allow the back button to close the app
      },
      child: Scaffold(
        extendBody: true,
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
          backgroundColor: templateOpacity,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.grey[600],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: routes.map((e) => e.item).toList(),
          currentIndex: _selectedIndex,
          onTap: _onTap,
        ),
      ),
    );
  }
}
