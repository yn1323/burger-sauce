import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/pages/search/battle_data/pokemon.dart';
import 'package:burger_sauce/templates/my_scaffold.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ENV
  if (!kReleaseMode && kIsWeb) {
    await dotenv.load(fileName: ".env.development");
  } else {
    await dotenv.load(fileName: ".env.production");
  }
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
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ja", "JP"),
        ],
        theme: ThemeData(
          fontFamily: "Noto Sans JP",
        ),
        routes: {
          '/': (context) => const MyScaffold(),
          '/search/battle_data': (context) => const BattleDataPokemon(),

          // '/damage_calculation': (ctx) => const DamageCalculationPage(),
          // '/search': (context) => const SearchPage(),
          // '/trend': (context) => const TrendPage(),
          // '/build_support': (context) => const BuildSupportPage(),
          // '/self': (context) => const SelfPage(),
          // '/setting': (context) => const SettingPage(),
        },
        // onGenerateRoute: (settings) {
        //   if (settings.name == '/search/battle_data') {
        //     return MaterialPageRoute(
        //         builder: (context) => BattleDataPokemon(
        //             data: settings.arguments as BattleDataPokemonArgs));
        //   }
        //   return null;
        // },
      ),
    );
  }
}
