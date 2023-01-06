import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keep/src/core/errors/failure.dart';
import 'package:flutter_keep/src/feature/Home/home.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit({
    required this.notesRepository,
  }) : super(const NotesInitial());

  final NotesRepository notesRepository;

  Future<void> fetchNotes() async {
    emit(const NotesLoading());

    final response = await notesRepository.fetchNotes();
    response.fold(
      (success) => emit(
        NotesLoaded(noteList: success),
      ),
      (error) => emit(
        NotesError(failure: error),
      ),
    );
  }
}
