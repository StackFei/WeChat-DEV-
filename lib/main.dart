import 'package:flutter/material.dart';
import './pages/index_out.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '微信',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.black
        ),
        home: IndexPage(),
      ),
    );
  }
}