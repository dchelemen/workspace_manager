import 'package:flutter/material.dart';

class WorkspaceList extends StatefulWidget {
  final List<String> workspaces;
  final Function(String) onWorkspaceSelected;

  WorkspaceList({
    required this.workspaces,
    required this.onWorkspaceSelected,
  });

  @override
  _WorkspaceListState createState() => _WorkspaceListState();
}

class _WorkspaceListState extends State<WorkspaceList> {
  // Function to add a new workspace
  void addWorkspace() {
    setState(() {
      int newWorkspaceNumber = widget.workspaces.length + 1;
      widget.workspaces.add('Workspace $newWorkspaceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Adjust width as needed
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(width: 1, color: Colors.grey), // Thin vertical line
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.workspaces.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(widget.workspaces[index]),
                  onTap: () {
                    widget.onWorkspaceSelected(widget.workspaces[index]);
                  },
                );
              },
            ),
          ),
          SizedBox(height: 10),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: addWorkspace,
          ),
        ],
      ),
    );
  }
}