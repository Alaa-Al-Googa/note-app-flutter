import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_buttom.dart';
import 'package:note/views/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
      return  Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              CustomTextField(hint: 'Text'),
              SizedBox(
                height: 16,
              ),
              CustomTextField(hint: 'content',maxLises: 5,),
              SizedBox(
                height: 32,
              ),
              CustomButtom(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      );
  }
}
