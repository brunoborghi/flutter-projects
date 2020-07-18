import 'package:bytebank_final/database/app_database.dart';
import 'package:flutter/material.dart';
import 'package:bytebank_final/screens/dashboard.dart';
import 'models/contact.dart';
import 'screens/contact_form.dart';
import 'screens/contacts_list.dart';

//void main() => runApp(BytebankApp());

void main() {
  runApp(BytebankApp());
  save(Contact(0, 'Bruno', 2000));
  findAll().then((contacts) => debugPrint(contacts.toString()));
}

class BytebankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}

