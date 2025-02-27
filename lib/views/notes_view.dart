import 'package:flutter/material.dart';
import 'package:note/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
      ),
      body: NoteViewBody(),
    );
  }
}
