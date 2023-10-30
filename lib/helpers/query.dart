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

  bool isLoadingOrError() => loading || hasErrors;
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
  });
}

QueryResult<T> useQuery<T, V>(
  OperationRequest<T, V> operationRequest,
) {
  final client = GetIt.I<TypedLink>();
  final response = useState<OperationResponse<T, V>?>(null);

  useEffect(() {
    final stream = client.request(operationRequest);
    final listener = stream.listen((result) {
      response.value = result;
    });

    return listener.cancel;
  }, [operationRequest]);

  return QueryResult<T>(
    data: response.value?.data,
    loading: response.value?.loading ?? true,
    hasErrors: response.value?.hasErrors ?? false,
    errors: response.value?.graphqlErrors,
  );
}
