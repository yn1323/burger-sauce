// flutter_hooksで、Apple Sign Inをスルメソッドを実装する
import 'package:burger_sauce/constants/env/env.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential?> googleSignIn(BuildContext context) async {
  try {
    final googleUser =
        kIsWeb ? await signInWithWeb() : await signInWithAndroid();
    final googleAuth = await googleUser!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    return userCredential;
  } catch (e) {
    // ここで、エラー処理をする
    if (e is PlatformException && e.code == 'sign_in_canceled') {
      print('User canceled the Google sign-in process');
    } else {
      throw e.toString();
    }
  }
  return null;
}

// WebはidTokenが返ってこないのでエラーになる
Future<GoogleSignInAccount?> signInWithWeb() async {
  final googleSignIn = GoogleSignIn(
    clientId: fbClientIdWeb,
  );

  final res = await googleSignIn.requestScopes([
    'email',
    'https://www.googleapis.com/auth/userinfo.profile',
  ]);

  return res ? googleSignIn.signInSilently() : null;
}

Future<GoogleSignInAccount?> signInWithAndroid() async {
  return await GoogleSignIn().signIn();
}
