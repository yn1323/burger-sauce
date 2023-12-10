import 'package:burger_sauce/pages/top/calc/damage_card/ev_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => Storybook(
        initialStory: 'Page/EvConfig',
        stories: [
          Story(
            name: 'Page/EvConfig',
            builder: (context) => EvConfig(
              ev: const [0, 0, 0, 0, 252, 0],
              onChange: ({required type, required value}) {},
            ),
          ),
        ],
      );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env.development");

  runApp(const ProviderScope(child: MyApp()));
}
