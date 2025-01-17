import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:mycochase/Evidance.dart';
import 'package:mycochase/Species.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green,
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight:FontWeight.w400
        )
      )
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
          bottom: const TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            // dividerHeight: 10,
            // indicatorAnimation: TabIndicatorAnimation.linear,
            indicatorSize: TabBarIndicatorSize.tab,
            padding: EdgeInsets.only(bottom: 5),unselectedLabelColor: Color.fromARGB(255, 105, 104, 104),
            indicator: BoxDecoration(
              color: Colors.white,
              // color: Color.fromARGB(255, 47, 33, 243),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20),
                right: Radius.circular(20),
              ),
            ),
            // padding: EdgeInsets.symmetric(horizontal: 30),
            labelPadding: EdgeInsets.symmetric(horizontal: 40),

            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            tabs: [
              Tab(text: "All"),
              Tab(text: "Drug"),
              Tab(text: "Evidence"),
              Tab(text: "Species"),
            ],
          ),
        ),
        body: Row(
          children: [
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     color: Colors.grey[200],
            //     child: const Center(child: Text('Sidebar')),
            //   ),
            // ),
            Expanded(
              flex: 4,
              child: TabBarView(
                children: [
                  Startpage(),
                ],
              ),
            ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     color: Colors.grey[200],
            //     child: const Center(child: Text('Details Panel')),
            //   ),
            // ),
          ],
        ),
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
