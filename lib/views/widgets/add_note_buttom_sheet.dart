import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/views/widgets/add_note_form.dart';
import 'package:note/views/widgets/custom_buttom.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
      return  Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: BlocConsumer<AddNoteCubit,AddNoteState>(
              builder: (context,state){
                return ModalProgressHUD(
                    inAsyncCall: state is AddNoteLoadingState ? true : false,
                    child: AddNoteForm(),
                );
              },
              listener: (context,state){
                if(state is AddNoteFailureState){
                  print('failed ${state.errMessage}');
                }
                if(state is AddNoteSuccessState){
                  Navigator.pop(context);
                }
              }
          ),
          //child: AddNoteForm(),
        ),
      );
  }
}

