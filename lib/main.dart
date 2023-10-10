import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/pages/build_support.dart';
import 'package:burger_sauce/pages/damage_calculation.dart';
import 'package:burger_sauce/pages/search.dart';
import 'package:burger_sauce/pages/self.dart';
import 'package:burger_sauce/pages/setting.dart';
import 'package:burger_sauce/pages/trend.dart';
import 'package:burger_sauce/templates/my_scaffold.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ENV
  const envFile = String.fromEnvironment('env');
  await dotenv.load(fileName: envFile);
  final client = await initClient();
  GetIt.I.registerLazySingleton<TypedLink>(() => client);

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookWidget {
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
