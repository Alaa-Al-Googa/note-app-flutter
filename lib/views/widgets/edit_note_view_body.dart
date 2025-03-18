import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/get_note_cubit/notes_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/widgets/custom_app_bar.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {

  String ? title,content;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: (){
              widget.note.title=title??widget.note.title;
              widget.note.subTitle=content??widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
              title: 'Edit Note',
              icon: Icons.check
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChange: (value){
              title=value;
            },
              //hint: 'Title'
            hint: widget.note.title,
          ),

          CustomTextField(
            onChange: (value){
              content=value;
            },
            //hint: 'Content',
            hint: widget.note.subTitle,
            maxLises: 5,
          ),
        ],
      ),
    );
  }
}
