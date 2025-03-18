import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note/cubits/get_note_cubit/notes_cubit.dart';
import 'package:note/helper/show_snack_bar.dart';
import 'package:note/views/widgets/add_note_form.dart';


class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit,AddNoteState>(
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is AddNoteLoadingState ? true : false,
                child:const Padding(
                  padding:  EdgeInsets.only(
                      left: 16,
                    right: 16,
                    bottom: 50,
                    //bottom: MediaQuery.of(context).viewInsets.bottom
                  ),
                  child:  SingleChildScrollView(
                    child: AddNoteForm(),
                  ),
                ),
              );
            },
            listener: (context, state) {
              if (state is AddNoteFailureState) {
                print('failed ${state.errMessage}');
              }
              if (state is AddNoteSuccessState) {
                Navigator.pop(context);
                ShowSnackBar(context, 'Add note Success');
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              }
            }
        ),
      ),
    );
  }
}

