import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.zero,
      child: ListView.builder(
          itemBuilder: (context,index){
            return Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: CustomNoteItem(),
            );
          }
      ),
    );
  }
}
