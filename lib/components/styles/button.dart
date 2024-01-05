import 'package:flutter/material.dart';

ButtonStyle getCardButtonFormStyle(BuildContext context) {
  return ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    // TODO: ColorSchemaをあとで考える
    // foregroundColor: Theme.of(context).colorScheme.onPrimary,
    // backgroundColor: Theme.of(context).colorScheme.primary,
    // foregroundColor: Colors.white,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  );
}
