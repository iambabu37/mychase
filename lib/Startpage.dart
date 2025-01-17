import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';
import './demotabar.dart';

void main() {
  runApp(const StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ["gz", 'fasta', 'fastq'],
        initialDirectory: Directory.current.path,
        allowMultiple: false,
        dialogTitle: "Select a file",
        lockParentWindow: true,
      );

      if (result != null) {
        // Handle file selection
        print('Selected file: ${result.files.single.path}');
      }
    } catch (e) {
      print('File picking error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mycochase",
          style: TextStyle(
            color: Color.fromARGB(255, 5, 138, 9),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          _buildFileMenu(),
          SizedBox(width: 20),
          _buildEditMenu(),
          SizedBox(width: 20),
          _buildAboutMenu(),
          SizedBox(width: 60),
        ],
      ),
      body: Stack(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              color: Colors.grey[200],
              child: Image.asset('./assets/banner_01.gif', fit: BoxFit.fill),
            ),
          ),
          Positioned(
            top: 200,
            bottom: 200,
            left: 450,
            child: Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // More explicit circular shape
                color: Colors.white,
                // borderRadius: BorderRadius.circular(300),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
                border: Border.all(color: Colors.grey.shade300, width: 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      _pickFile();
                    },
                    child: Text(
                      "Upload File Here ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.blue.shade200,
                        height: 3,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TopbarApp()),
                      );
                    },
                    child: Text(
                      "Click to proceed ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  PopupMenuButton _buildFileMenu() {
    return PopupMenuButton(
      constraints: BoxConstraints(maxHeight: 400, minWidth: 200),
      tooltip: "File Section",
      offset: Offset(-20, 28),
      child: const Text('File'),
      itemBuilder:
          (context) => [
            PopupMenuItem(height: 30, value: "new", child: const Text("New")),
            PopupMenuItem(
              height: 30,
              value: "open",
              onTap: _pickFile,
              child: const Text("Open"),
            ),
            const PopupMenuItem(height: 30, value: "save", child: Text("Save")),
          ],
    );
  }

  PopupMenuButton _buildEditMenu() {
    return PopupMenuButton(
      tooltip: "View Section",
      position: PopupMenuPosition.under,
      child: const Text("View"),
      itemBuilder:
          (context) => [
            const PopupMenuItem(height: 30, value: "cut", child: Text('Cut')),
            const PopupMenuItem(height: 30, value: "copy", child: Text('Copy')),
            const PopupMenuItem(
              height: 30,
              value: "paste",
              child: Text('Paste'),
            ),
          ],
    );
  }

  PopupMenuButton _buildAboutMenu() {
    return PopupMenuButton(
      tooltip: "Help Section",
      position: PopupMenuPosition.under,
      itemBuilder:
          (context) => [
            const PopupMenuItem(
              height: 30,
              value: "feedback",
              child: Text('Feedback'),
            ),
            const PopupMenuItem(height: 30, value: "help", child: Text('Help')),
            const PopupMenuItem(
              height: 30,
              value: "info",
              child: Text('More Information'),
            ),
          ],
      child: const Text("Help"),
    );
  }
}
