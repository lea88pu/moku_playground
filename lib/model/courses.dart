import 'dart:async';

import 'package:moku_playground/observable_lessons/courses_observable.dart';
import 'package:moku_playground/shared/interfaces.dart';





class CoursesModel implements Disposable {
  StreamController<CoursesO> _coursesO = StreamController<CoursesO>.broadcast();
  Stream<CoursesO> get coursesO => _coursesO.stream;

  @override
  Future<void> dispose() async {
    _coursesO.close();
  }
}