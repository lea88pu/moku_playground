import 'package:flutter/material.dart';
import 'package:moku_playground/observable_lessons/courses_observable.dart';
import 'package:moku_playground/widgets/drawer.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          endDrawer: CustomDrawer(),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('Mokuteki.io Playgrounds'),
            backgroundColor: Colors.pink,
          ),
          body: Center(
            child: Consumer<CoursesO>(
              builder: (context, o, child) =>
                  Text('there are ${o.courses.length} courses available'),
            ),
          ),
        ),
      ),
    );
  }
}
