import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutExample(),
    );
  }
}

class LayoutExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Example"),
      ),
      body: Column(
        children: [
          // Top Section
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: Center(child: Text("Top Section")),
            ),
          ),

          // Middle Section
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Center(child: Text("Left")),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Center(child: Text("Right")),
                  ),
                ),
              ],
            ),
          ),

          // Bottom Section
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.orange,
              child: Center(child: Text("Bottom Section")),
            ),
          ),
        ],
      ),
    );
  }
}
