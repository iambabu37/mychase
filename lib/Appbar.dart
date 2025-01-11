import 'package:flutter/material.dart';
import 'package:mycochase/customappbar.dart';
import 'Home.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import './customappbar.dart';
import './topbar.dart';

void main() => runApp(myAppbar());

class myAppbar extends StatelessWidget {
  const myAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: Customappbar(),
        body: Column(
          children: [
            Topbar(),

            // Home()
          ],
        ),
      ),
    );
  }
}
