import 'package:flutter/material.dart';
import 'package:fluttersmartpay/views/home/home_view.dart';
import 'package:fluttersmartpay/views/profile/profile_view.dart';
import 'package:fluttersmartpay/views/register/register_view.dart';
import 'package:fluttersmartpay/views/transaction/transaction_history_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
