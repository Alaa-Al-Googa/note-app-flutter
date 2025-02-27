import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_app_bar.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'Title'),
          CustomTextField(hint: 'Content',maxLises: 5,),
        ],
      ),
    );
  }
}
