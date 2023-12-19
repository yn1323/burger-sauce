import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_exec/gql_exec.dart';

Center loadingWidget() => const Center(child: CircularProgressIndicator());
Center notFoundWidget() => const Center(child: Text('データが見つかりませんでした'));
Center errorWidget(String e) => Center(child: Text(e));

class QueryResult<T> {
  final T? data;
  final bool loading;
  final bool hasErrors;
  final List<GraphQLError>? errors;
  final Function refetch;

  bool isLoadingOrError() => data == null || hasErrors;

  Center suspensePart() {
    if (loading || data == null) {
      return loadingWidget();
    }
    if (hasErrors) {
      return notFoundWidget();
    }
    return errorWidget(errors!.toString());
  }

  QueryResult({
    required this.data,
    required this.loading,
    required this.hasErrors,
    this.errors,
    required this.refetch,
  });
}

QueryResult<T> useQuery<T, V>(
  OperationRequest<T, V> operationRequest,
) {
  final client = GetIt.I<TypedLink>();
  final response = useState<OperationResponse<T, V>?>(null);
  final refetchTrigger = useState(0);

  void refetch() {
    refetchTrigger.value++;
  }

  useEffect(() {
    // クエリをリスニングする
    final stream = client.request(operationRequest);
    final subscription = stream.listen((result) {
      response.value = result;
    });

    // useEffectがクリーンアップされたときにサブスクリプションをキャンセル
    return () {
      subscription.cancel();
    };
  }, [operationRequest, refetchTrigger.value]);

  return QueryResult<T>(
    data: response.value?.data,
    loading: response.value?.loading ?? true,
    hasErrors: response.value?.hasErrors ?? false,
    errors: response.value?.graphqlErrors,
    refetch: refetch,
  );
}

void useQuerySync<T, V>(OperationRequest<T, V> operationRequest,
    Function(OperationResponse<T, V>) callback) {
  final client = GetIt.I<TypedLink>();
  client.request(operationRequest).listen(callback);
}
