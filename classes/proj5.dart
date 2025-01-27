import 'package:flutter/material.dart';




class GridProj extends StatelessWidget {
   List<Map<String, dynamic>> items = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.contact_mail, 'label': 'Contact'},
    {'icon': Icons.map, 'label': 'Map'},
    {'icon': Icons.phone, 'label': 'Phone'},
    {'icon': Icons.camera_alt, 'label': 'Camera'},
    {'icon': Icons.settings, 'label': 'Setting'},
    {'icon': Icons.photo_album, 'label': 'Album'},
    {'icon': Icons.wifi, 'label': 'WiFi'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter GridView Demo'),
        backgroundColor: Colors.blue,
      ),
      body:

      GridView.builder(

        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,

        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(color: Colors.orange[400],
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(items[index]['icon'] as IconData, size: 50.0 ,color: Colors.grey[700],),
                  SizedBox(height: 20.0),
                  Text(items[index]['label']!),
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}