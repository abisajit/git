import 'package:flutter/material.dart';
import 'package:socionote/database.dart';
import 'package:socionote/homepage.dart';
import 'package:socionote/sharedpre.dart';

class AddNote extends StatefulWidget {
  AddNote({Key key}) : super(key: key);
@@ -10,8 +13,21 @@ class AddNote extends StatefulWidget {
class _AddNoteState extends State<AddNote> {
  TimeOfDay timeOfDay = TimeOfDay.now();
  DateTime dateTime = DateTime.now();
  TextEditingController titlecontroller;
  TextEditingController bodycontroller;
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController bodycontroller = TextEditingController();

  Future<void> saveNote() async {
    Map<String, String> userNote = {
      "title": titlecontroller.text,
      "Description": bodycontroller.text,
    };

    String email = await Helper.getUsernameSharedPreference();
    await DataBase().saveUserNote(userNote, email);
    Navigator.pop(
        context, MaterialPageRoute(builder: (context) => SocioNoteHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
@@ -22,9 +38,9 @@ class _AddNoteState extends State<AddNote> {
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_right),
            icon: Icon(Icons.save),
            onPressed: () {
              print(titlecontroller.text);
              saveNote();
            },
          ),
        ],
 
