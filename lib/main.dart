import 'package:burger_sauce/pages/build_support.dart';
import 'package:burger_sauce/pages/damage_calculation.dart';
import 'package:burger_sauce/pages/search.dart';
import 'package:burger_sauce/pages/self.dart';
import 'package:burger_sauce/pages/setting.dart';
import 'package:burger_sauce/pages/trend.dart';
import 'package:burger_sauce/templates/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  // ENV
  const envFile = String.fromEnvironment('env');
  await dotenv.load(fileName: envFile);

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // テキストエリア外タップでフォーカスを外す
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const MyScaffold(),
          '/damage_calculation': (ctx) => const DamageCalculationPage(),
          '/search': (context) => const SearchPage(),
          '/trend': (context) => const TrendPage(),
          '/build_support': (context) => const BuildSupportPage(),
          '/self': (context) => const SelfPage(),
          '/setting': (context) => const SettingPage(),
        },
      ),
    );
  }
}
