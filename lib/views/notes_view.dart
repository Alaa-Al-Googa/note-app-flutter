import 'package:flutter/material.dart';
import 'package:note/views/widgets/add_note_buttom_sheet.dart';
import 'package:note/views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                builder: (context){
                  return AddNoteButtomSheet();
                });
          },
          child: Icon(Icons.add),
      ),
      body: NoteViewBody(),
    );
  }
}
