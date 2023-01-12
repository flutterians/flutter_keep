part of 'notes_cubit.dart';

abstract class NotesState extends Equatable {
  const NotesState();

  @override
  List<Object> get props => [];
}

class NotesInitial extends NotesState {
  const NotesInitial();
  @override
  List<Object> get props => [];
}

class NotesLoading extends NotesState {
  const NotesLoading();
  @override
  List<Object> get props => [];
}

class NotesAdded extends NotesState {
  const NotesAdded({
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  List<Object> get props => [noteModel];
}

class NotesUpdated extends NotesState {
  const NotesUpdated({
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  List<Object> get props => [noteModel];
}

class NotesError extends NotesState {
  const NotesError({
    required this.failure,
  });
  final Failure failure;
  @override
  List<Object> get props => [failure];
}
