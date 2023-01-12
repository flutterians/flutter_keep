import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/errors/failure.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit({
    required NotesRepository notesRepository,
  })  : _notesRepository = notesRepository,
        super(const NotesInitial());

  final NotesRepository _notesRepository;

  Future<void> addNote({required NoteModel noteModel}) async {
    emit(const NotesLoading());

    final response = await _notesRepository.addNote(noteModel: noteModel);
    response.fold(
      (success) => emit(
        NotesAdded(noteModel: success),
      ),
      (error) => emit(
        NotesError(failure: error),
      ),
    );
  }

  Future<void> updateNote({required NoteModel noteModel}) async {
    emit(const NotesLoading());

    final response = await _notesRepository.updateNote(noteModel: noteModel);
    response.fold(
      (success) => emit(
        NotesUpdated(noteModel: success),
      ),
      (error) => emit(
        NotesError(failure: error),
      ),
    );
  }
}
