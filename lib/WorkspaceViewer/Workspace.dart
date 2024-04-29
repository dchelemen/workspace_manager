import 'package:flutter/material.dart';

class WorkspaceStatistics extends StatelessWidget {
  final String selectedWorkspace;

  WorkspaceStatistics({required this.selectedWorkspace});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Workspace Statistics',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Selected Workspace: $selectedWorkspace',
              style: TextStyle(fontSize: 16),
            ),
            // Add more statistics widgets as needed
          ],
        ),
      ),
    );
  }
}