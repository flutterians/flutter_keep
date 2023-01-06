import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keep/src/core/errors/failure.dart';
import 'package:flutter_keep/src/feature/Home/infrastructure/models/note_model.dart';
import 'package:flutter_keep/src/feature/Home/infrastructure/repositories/notes_repository.dart';

class NotesRepositoryImpl implements NotesRepository {
  @override
  Future<Either<List<NoteModel>, Failure>> fetchNotes() async {
    try {
      // final response =
      //     await rootBundle.loadString('assets/json/fake_notes_list.json');
      // final jsonData = await json.decode(response) as List<dynamic>;
      // return Left(
      //   jsonData
      //       .map((e) => NoteModel.fromJson(e as Map<String, dynamic>))
      //       .toList(),
      // );
      return const Left([]);
    } catch (e) {
      return Right(Failure.fromException(e));
    }
  }

  @override
  Future<Either<List<NoteModel>, Failure>> addNote() {
    // TODO: implement addNote
    throw UnimplementedError();
  }
}
