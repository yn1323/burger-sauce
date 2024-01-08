import 'package:burger_sauce/constants/client.dart';
import 'package:burger_sauce/constants/firebase/options.dart';
import 'package:burger_sauce/route.dart';
import 'package:ferry/ferry.dart';
import 'package:firebase_core/firebase_core.dart';
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

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final client = await initClient();
  if (GetIt.I.isRegistered<TypedLink>()) {
    GetIt.I.unregister<TypedLink>();
  }
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
      child: MaterialApp.router(
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
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
