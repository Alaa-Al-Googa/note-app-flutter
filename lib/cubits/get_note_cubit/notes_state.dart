part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitialState extends NotesState {}
class NotesLoadingState extends NotesState {}
class NotesSuccessState extends NotesState {}
// class NotesFailureState extends NotesState {
//   final String errMessage;
//   NotesFailureState(this.errMessage);
// }


