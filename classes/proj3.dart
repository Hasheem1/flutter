import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Buttons',style: TextStyle(color: Colors.teal),),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'TextButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            TextButton(
              child: Text('Click Me',style: TextStyle(color: Colors.pinkAccent),),
              onPressed: () {
              },
            ),
            SizedBox(height: 16),

            Text(
              'ElevatedButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            ElevatedButton(
              child: Text('Click Me' ,style: TextStyle(color: Colors.green), ),
              onPressed: () {
              },
            ),
            SizedBox(height: 16),

            Text(
              'IconButton',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            IconButton(
              icon: Icon(Icons.thumb_up,color: Colors.orange, ),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
