import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_projects/customizWidget/textFormFieldLogin.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Lottie.network(
                      "https://lottie.host/abe7dc0c-78b4-418b-a668-553507053f32/OtrPpCWZWV.json",
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Text("Login ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text("Lets Get Started ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                  logintxtform(
                    hint: "example@domain.com",
                    lbl: "Email or Mobile ",
                   // preIcon: Icon(Icons.email),
                    preIcon: null,
                    v: (value) {
                      if (!emailValidation(value!)) {
                        return "Not valid";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  logintxtform(

                    hint: "******",
                    lbl: "Password",
                //    preIcon: Icon(Icons.password),
                    sufIcon: Icon(Icons.remove_red_eye_outlined),


                   preIcon: null,
                  ),
                  SizedBox(height: 5),

                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: Text("Forget password?"),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding:EdgeInsets.only(left: 170,right: 170,top: 25,bottom: 25) // Button color

                    ),

                    onPressed: () {
                      
                      if (_formKey.currentState!.validate()) {
                        print("Done");
                      }
                    },
                    child: Text("Login ",style:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    

                  ),
                  SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 60),

                  child: Row(
                    children: [
                      Text("Alread hava an accaount? ",style: TextStyle(fontSize:20 ),),
                      Text("Sign in",style: TextStyle(color: Colors.orange,fontSize: 20),),
                    ],
                  ),
                ),
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

bool emailValidation(String email) {
  String pattern =
      r"^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$";
  return RegExp(pattern).hasMatch(email);
}
