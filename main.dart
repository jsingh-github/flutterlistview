import 'package:flutter/material.dart';

import 'list_currency.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListCurrency(),
    );
  }
}
