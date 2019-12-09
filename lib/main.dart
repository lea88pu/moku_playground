import 'package:flutter/material.dart';
import 'package:moku_playground/provider/provider_main.dart';
import 'package:moku_playground/router/router.dart';
import 'package:provider/provider.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        onGenerateRoute: Router.generator,

      ),
    );
  }
}