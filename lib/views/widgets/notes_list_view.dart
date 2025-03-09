import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/get_note_cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>notes = BlocProvider.of<NotesCubit>
          (context).notes!;
        return Padding(
          padding: EdgeInsets.zero,
          child: ListView.builder(
            itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: CustomNoteItem(
                    note: notes[index],
                  ),
                );
              }
          ),
        );
      },
    );
  }
}
