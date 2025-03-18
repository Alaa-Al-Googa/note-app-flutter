import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());

  List<NoteModel>? notes;

  fetchAllNotes()async{
      //try {
        var notesBox = Hive.box<NoteModel>(kNoteBox);
        //List<NoteModel> notes=await notesBox.values.toList();
        //emit(NotesSuccessState(notes));
        notes=notesBox.values.toList();
     // }catch (e) {
        //emit(NotesFailureState(e.toString()));
     // }

  }

}
