import 'package:flutter/material.dart';
import 'WorkspaceSelector/VerticalListView.dart';
import 'WorkspaceViewer/Workspace.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Set the theme to dark mode
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List of workspaces
  List<String> workspaces = [];

  // Currently selected workspace
  String selectedWorkspace = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workspace Statistics'),
      ),
      body: Row(
        children: [
          // Left panel - Workspace list
          WorkspaceList(
            workspaces: workspaces,
            onWorkspaceSelected: (String workspace) {
              setState(() {
                selectedWorkspace = workspace;
              });
            }
          ),
          // Right panel - Statistics
          WorkspaceStatistics(selectedWorkspace: selectedWorkspace),
        ],
      ),
    );
  }
}