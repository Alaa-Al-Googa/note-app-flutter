import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note/constants.dart';
import 'package:note/views/notes_view.dart';
import 'package:note/views/widgets/note_view_body.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
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

