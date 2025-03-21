import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/get_note_cubit/notes_cubit.dart';
import 'package:note/views/widgets/add_note_buttom_sheet.dart';
import 'package:note/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: NoteViewBody(),
    );
  }
}
