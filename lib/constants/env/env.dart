import 'package:flutter_dotenv/flutter_dotenv.dart';

final String ballSkeletonUrl = dotenv.get('BALL_SKELETON');
final String loadingSkeletonUrl = dotenv.get('LOADING_SKELETON');

final String fbApiKeyWeb = dotenv.get('FB_API_KEY_WEB');
final String fbApiKeyAndroid = dotenv.get('FB_API_KEY_ANDROID');
final String fbAppIdWeb = dotenv.get('FB_APP_ID_WEB');
final String fbAppIdAndroid = dotenv.get('FB_APP_ID_ANDROID');
final String fbMessagingSenderId = dotenv.get('FB_MESSAGING_SENDER_ID');
final String fbProjectId = dotenv.get('FB_PROJECT_ID');
final String fbAuthDomain = dotenv.get('FB_AUTH_DOMAIN');
final String fbStorageBucket = dotenv.get('FB_STORAGE_BUCKET');
final String fbClientIdWeb = dotenv.get('FB_CLIENT_ID_WEB');
