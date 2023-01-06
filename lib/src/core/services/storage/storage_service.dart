import 'package:flutter_keep/src/core/core.dart';
import 'package:isar/isar.dart';

class StorageService {
  StorageService() {
    db = openDB();
  }
  late Future<Isar> db;

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      return Isar.open(
        [],
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }

  Future<ThemeModel?> updateTheme(ThemeModel data) async {
    throw UnimplementedError();
  }

  Future<ThemeModel?> getTheme(ThemeModel data) async {
    throw UnimplementedError();
  }
}
