import 'package:flutter/material.dart';


class Popup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Color scaffoldColor = Colors.white;
  Color appBarColor = Colors.blue;

   List<Color> scaffoldColors = [
    Colors.white,
    Colors.grey,
    Colors.yellow,
    Colors.green,
    Colors.pink,
  ];

  List<Color> appBarColors = [
    Colors.blue,
    Colors.red,
    Colors.orange,
    Colors.purple,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Dropdown and PopupMenu'),
        actions: [
          PopupMenuButton<Color>(
            onSelected: (color) {
              setState(() {
                appBarColor = color;
              });
            },
            itemBuilder: (context) {
              return appBarColors.map((color) {
                return PopupMenuItem<Color>(
                  value: color,
                  child: Container(
                    height: 20,
                    width: 50,
                    color: color,
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(
        child: DropdownButton<Color>(
          value: scaffoldColor,
          onChanged: (color) {
            setState(() {
              scaffoldColor = color!;
            });
          },
          items: scaffoldColors.map((color) {
            return DropdownMenuItem<Color>(
              value: color,
              child: Container(
                height: 40,
                width: 80,
                color: color,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
