import 'package:flutter/material.dart';
import 'package:note/views/notes_view.dart';
import 'package:note/views/widgets/note_view_body.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //fontFamily: 'Poppins'
      ),
      //theme: ThemeData.light(),
      home: Scaffold(
        body: NotesView(),
      )
    );
  }
}

