import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouterState getRouterState(BuildContext context) {
  final GoRouterState state = GoRouterState.of(context);
  return state;
}
