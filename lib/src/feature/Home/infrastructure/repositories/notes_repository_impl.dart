import 'package:dartz/dartz.dart';
import 'package:flutter_keep/src/core/core.dart';
import 'package:flutter_keep/src/feature/Home/infrastructure/models/note_model.dart';
import 'package:flutter_keep/src/feature/Home/infrastructure/repositories/notes_repository.dart';

class NotesRepositoryImpl implements NotesRepository {
  const NotesRepositoryImpl({required this.localDataSource}) : super();

  final LocalDataSource localDataSource;

  @override
  Future<Either<NoteModel, Failure>> addNote({
    required NoteModel noteModel,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<NoteModel, Failure>> updateNote({
    required NoteModel noteModel,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<bool, Failure>> deleteNote() {
    throw UnimplementedError();
  }
}
