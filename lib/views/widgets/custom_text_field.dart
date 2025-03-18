import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({this.maxLises=1, required this.hint, this.onSaved, this.onChange,});
  final int maxLises;
  final String hint;
  final void Function(String?) ? onSaved;
  final Function(String?) ? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty??true){
          return 'Field is required';
        }else{
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLises,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          kPrimaryColor,
        )
      ),
    );

  }
}

OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8,),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
  );
}