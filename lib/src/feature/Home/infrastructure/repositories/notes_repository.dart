import 'package:dartz/dartz.dart';
import 'package:flutter_keep/src/core/errors/failure.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';

abstract class NotesRepository {
  Future<Either<List<NoteModel>, Failure>> fetchNotes();
  Future<Either<List<NoteModel>, Failure>> addNote();
}
