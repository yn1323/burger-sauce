import 'package:burger_sauce/graphql/__generated__/schema.schema.gql.dart'
    show possibleTypesMap;
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<Client> initClient() async {
  await Hive.initFlutter();

  final box = await Hive.openBox("graphql");

  final store = HiveStore(box);

  final cache = Cache(store: store, possibleTypes: possibleTypesMap);

  final link = HttpLink(dotenv.get('ENDPOINT'), defaultHeaders: {
    "x_api_key": dotenv.get('X_API_KEY'),
  });

  final client = Client(
    link: link,
    cache: cache,
    defaultFetchPolicies: {
      OperationType.query:
          kReleaseMode ? FetchPolicy.CacheAndNetwork : FetchPolicy.NetworkOnly,
    },
  );

  return client;
}

const fetchNetworkOnly = FetchPolicy.NetworkOnly;
const fetchCacheFirst =
    kReleaseMode ? FetchPolicy.CacheFirst : FetchPolicy.NetworkOnly;
const fetchCacheAndNetwork =
    kReleaseMode ? FetchPolicy.CacheAndNetwork : FetchPolicy.NetworkOnly;
const fetchNoCache = FetchPolicy.NoCache;

// デバッグで重い場合に利用する
const fetchForceCacheFirst = FetchPolicy.CacheFirst;
const fetchForceCacheAndNetwork = FetchPolicy.CacheAndNetwork;
