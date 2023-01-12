import 'package:hive_flutter/hive_flutter.dart';

abstract class LocalDataSource {
  Future<void> clearHive();
  Future<LazyBox<dynamic>> openBox(String name);
}
