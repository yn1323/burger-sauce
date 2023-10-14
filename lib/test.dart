import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    TabbedPage(),
    NonTabbedPage(),
    AnotherTabbedPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class TabbedPage extends StatelessWidget {
  const TabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabbed Page"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.one_k)),
              Tab(icon: Icon(Icons.two_k)),
              Tab(icon: Icon(Icons.three_k)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
          ],
        ),
      ),
    );
  }
}

class NonTabbedPage extends StatelessWidget {
  const NonTabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Non-Tabbed Page"),
      ),
      body: const Center(child: Text('No Tabs Here')),
    );
  }
}

class AnotherTabbedPage extends StatelessWidget {
  const AnotherTabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Another Tabbed Page"),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tab A'),
              Tab(text: 'Tab B'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Tab A Content')),
            Center(child: Text('Tab B Content')),
          ],
        ),
      ),
    );
  }
}
