import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchPage extends HookWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final endpoint = dotenv.get('ENDPOINT');
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kTextTabBarHeight),
          child: AppBar(
            title: null,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.one_k)),
                Tab(icon: Icon(Icons.two_k)),
                Tab(icon: Icon(Icons.three_k)),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text(endpoint)),
            const Center(child: Text('Tab 2')),
            const Center(child: Text('Tab 3')),
          ],
        ),
      ),
    );
  }
}
