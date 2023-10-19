// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;
  NotesSuccess(
    this.notes,
  );
}

class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure(this.errMessage);
}
