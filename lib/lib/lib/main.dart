import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socionote/homepage.dart';
import 'package:socionote/splash.dart';

void main() {
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SocioNote());
}

class SocioNote extends StatefulWidget {
  SocioNote({Key key}) : super(key: key);
  @override
  _SocioNoteState createState() => _SocioNoteState();
}
class _SocioNoteState extends State<SocioNote> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SocioNote',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: SocioNoteHome(),
      home: SplashScreen(),
    );
  }
}
 
