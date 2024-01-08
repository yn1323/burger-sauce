import 'package:burger_sauce/helpers/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingPage extends HookWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final name = useState('');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Non-Tabbed Page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              final hoge = await googleSignIn(context);
              // name.value = hoge?.displayName ?? '';
              print("finished!!!!!");
            },
            child: const Text('Signin'),
          ),
          Text(name.value),
          ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              name.value = '';
            },
            child: const Text('Signout'),
          ),
          ElevatedButton(
            onPressed: () async {
              print(FirebaseAuth.instance.currentUser?.uid);
            },
            child: const Text('any'),
          ),
        ],
      ),
    );
  }
}
