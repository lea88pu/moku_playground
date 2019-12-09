import 'dart:async';

import 'package:moku_playground/entity/courses_entity.dart';
import 'package:moku_playground/shared/interfaces.dart';




class CoursesApi implements Disposable {
  StreamController<CoursesE> _coursesO = StreamController<CoursesE>.broadcast();
  Stream<CoursesE> get coursesO => _coursesO.stream;

  @override
  Future<void> dispose() async {
    _coursesO.close();
  }
}
