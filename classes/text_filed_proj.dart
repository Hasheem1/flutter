import 'package:flutter/material.dart';

class TextFieldd extends StatefulWidget {
  @override
  State<TextFieldd> createState() => _TextFielddState();
}

class _TextFielddState extends State<TextFieldd> {
  //const TextFieldd({super.key});
  @override
bool click =false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [

          TextField(

obscureText: click,
        decoration: InputDecoration(
border: OutlineInputBorder(borderRadius:BorderRadius.circular(50)),
          label: Text("password"),
          fillColor: Colors.blue,

          filled: true,
          hintText: "Hint text ",
          icon: Icon(Icons.star),
          suffixIcon: InkWell(child: Icon(Icons.text_rotation_none)
          ,onTap:
            (){
            setState(() {
              click?Icon(Icons.text_rotation_none) :Icon(Icons.ice_skating);
            }
            );
            }
            ,),


          prefixIcon: Icon(Icons.favorite),


        ),

            maxLength: 100,

          )
          ],
        ),
      )





    );
  }
}
