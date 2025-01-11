import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class CustomNewappbar extends StatelessWidget {
  const Customappbar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("GeeksForGeeks"),
      actions: [
        SizedBox(width: 5),
        PopupMenuButton(
          // icon: Icon(Icons.file_copy),
          // offset:Offset(-20,28),
          // constraints: BoxConstraints(
          //   maxHeight: 10,
          // ),
          constraints: BoxConstraints(maxHeight: 400, minWidth: 300),
          tooltip: "File Section ",
          // position: PopupMenuPosition.under,
          offset: Offset(-20, 28),
          child: Text('File'),
          itemBuilder:
              (context) => [
                PopupMenuItem(height: 30, value: "new", child: Text("New")),
                PopupMenuItem(
                  height: 30,
                  value: "open",
                  child: Text("Open"),
                  onTap: () async {
                    // Get application documents directory
                    // final Directory appDocumentsDir =
                    //     await getApplicationDocumentsDirectory();
                    // print(appDocumentsDir);
                    // Get temporary directory
                    // print(Directory.current.path);
                    FilePickerResult? result = await FilePicker.platform
                        .pickFiles(
                          type: FileType.custom,
                          allowedExtensions: ["gz", 'fasta', 'fastq'],
                          initialDirectory: Directory.current.path,
                          // initialDirectory: appDocumentsDir.path,
                          allowMultiple: false,
                          dialogTitle: "Select a file here",
                          lockParentWindow: true,
                        );
                  },
                ),
                PopupMenuItem(height: 30, value: "save", child: Text("save")),
              ],
        ),
        SizedBox(width: 20),
        PopupMenuDivider(),
        PopupMenuButton(
          position: PopupMenuPosition.under,
          tooltip: "Edit Section ",
          itemBuilder:
              (content) => [
                PopupMenuItem(height: 30, value: "cut", child: Text('cut')),
                PopupMenuItem(height: 30, value: "copy", child: Text('copy')),
                PopupMenuItem(height: 30, value: "paste", child: Text('paste')),
              ],
          child: Text("Edit"),
        ),
        SizedBox(width: 20),
        PopupMenuButton(
          tooltip: "About Section",
          position: PopupMenuPosition.under,
          child: Text("About"),
          // icon: Icon(Icons.edit),
          itemBuilder:
              (content) => [
                PopupMenuItem(
                  height: 30,
                  value: "cut",
                  child: Text('feed back'),
                ),
                PopupMenuItem(height: 30, value: "copy", child: Text('help')),
                PopupMenuItem(
                  value: "paste",
                  height: 30,
                  child: Text('pmore information'),
                ),
              ],
        ),
        Spacer(),
      ],

      bottom: TabBar(
        isScrollable: true,
        tabs: [
          Tab(icon: Icon(Icons.home_filled), text: "Home"),
          Tab(icon: Icon(Icons.account_box_outlined), text: "Account"),
          Tab(icon: Icon(Icons.alarm), text: "Alarm"),
          Tab(icon: Icon(Icons.home_filled), text: "Home"),
          Tab(icon: Icon(Icons.account_box_outlined), text: "Account"),
          Tab(icon: Icon(Icons.alarm), text: "Alarm"),
        ],
      ),
    );
  }
}
