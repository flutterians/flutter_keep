import 'package:flutter_keep/src/feature/Home/home.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class LocalStorageSetup {
  LocalStorageSetup._();

  static Future<void> get initHive => _initHive();

  static Future<void> _initHive() async {
    final appDocumentDir =
        await path_provider.getApplicationDocumentsDirectory();

    Hive
      ..init(appDocumentDir.path)
      ..registerAdapter<NoteModel>(
        NotesAdapter(),
      );
  }
}
