import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  
  
  addNote(NoteModel note)async{
    
    emit(AddNoteLoadingState());
    
    try {
      var noteBox=Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSuccessState());
      
    } catch (e) {
      emit(AddNoteFailureState(e.toString()));
    }
  }




}
