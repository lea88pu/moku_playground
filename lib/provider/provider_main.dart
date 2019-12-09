




import 'package:moku_playground/provider/api_provider.dart';
import 'package:moku_playground/provider/model_provider.dart';
import 'package:moku_playground/provider/observable_provider.dart';
import 'package:provider/provider.dart';



List<SingleChildCloneableWidget> providers = [
  ...apis,
  ...models,
  ...observables
];