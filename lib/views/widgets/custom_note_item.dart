import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context){
              return EditNoteView();
            }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                  padding:EdgeInsets.only(
                    top: 16,
                    bottom: 16,
                  ),
                child: Text(
                  'Build your career with therwat samy',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: (){},
                  icon:Icon(FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
              ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(right: 24,),
              child: Text(
                'May 21 ,2025',
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
