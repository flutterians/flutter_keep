import 'package:dartz/dartz.dart';
import 'package:flutter_keep/src/core/errors/failure.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';

abstract class NotesRepository {
  Future<Either<NoteModel, Failure>> addNote({required NoteModel noteModel});
  Future<Either<NoteModel, Failure>> updateNote({required NoteModel noteModel});
  Future<Either<bool, Failure>> deleteNote();
}
