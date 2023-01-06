import 'dart:developer';
import 'package:flutter_keep/src/core/core.dart';
import 'package:hive/hive.dart';

class LocalDataSourceImpl implements LocalDataSource {
  Future<void> clearHive() async {
    await Hive.deleteBoxFromDisk(notesBox);
    log('Local Database Cleared');
  }

  Future<LazyBox<dynamic>> openBox(String name) async {
    return Hive.isBoxOpen(name)
        ? Hive.lazyBox(name)
        : await Hive.openLazyBox(name);
  }
}
