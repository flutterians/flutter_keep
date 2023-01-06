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

class NotesLoaded extends NotesState {
  const NotesLoaded({
    required this.noteList,
  });
  final List<NoteModel> noteList;
  @override
  List<Object> get props => [noteList];
}

class NotesError extends NotesState {
  const NotesError({
    required this.failure,
  });
  final Failure failure;
  @override
  List<Object> get props => [failure];
}
