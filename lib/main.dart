import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/Windows/home.dart';
import 'Windows/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        //brightness: Brightness.dark,
        //primarySwatch: Colors.green,
        primarySwatch: Palette.navColor,
        //accentColor: Colors.cyan[600],
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}
