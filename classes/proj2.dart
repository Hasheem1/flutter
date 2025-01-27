import 'package:flutter/material.dart';
class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400],
                    ),
                    width: 220,
                    height: 65,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.orange,
                              size: 30,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Search",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[400],
                    ),
                    width: 80,
                    height: 65,
                    child: Center(
                      child: Icon(
                        Icons.notification_add,
                        color: Colors.orange,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(33),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtZAn6jO7JCNUsPI3FsgRg3ztVCaeRLmSfKg&s',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      width: 340,
                      height: 200,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(decoration: BoxDecoration(color: Colors.grey[400] ,borderRadius: BorderRadius.circular(15)  ),width: 40,height: 40,
                      child: Center(child: Text("ALL",style: TextStyle(fontWeight: FontWeight.bold,),) ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(decoration: BoxDecoration(color: Colors.grey[400] ,borderRadius: BorderRadius.circular(15)  ),width: 80,height: 40,
                      child: Center(child: Text("Ctegory",style: TextStyle(fontWeight: FontWeight.bold,),) ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Container(decoration: BoxDecoration(color: Colors.grey[400] ,borderRadius: BorderRadius.circular(15)  ),width: 40,height: 40,
                      child: Center(child: Text("Top",style: TextStyle(fontWeight: FontWeight.bold,),) ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Container(decoration: BoxDecoration(color: Colors.grey[400] ,borderRadius: BorderRadius.circular(15)  ),width: 100,height: 40,
                      child: Center(child: Text("Recommended",style: TextStyle(fontWeight: FontWeight.bold,),) ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration( border: Border.all(color: Colors.transparent),borderRadius: BorderRadius.circular(5),image: DecorationImage(image:NetworkImage('https://images.pexels.com/photos/6774882/pexels-photo-6774882.jpeg?cs=srgb&dl=pexels-michelle-leman-6774882.jpg&fm=jpg'
                      )

                        , fit: BoxFit.fill,  )
                      )
                      ,height: 170,width: 150,

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration( border: Border.all(color: Colors.transparent),borderRadius: BorderRadius.circular(5),image: DecorationImage(image: NetworkImage('https://static.wixstatic.com/media/464bd7_7fa1c3650bff4adba1b454f6a2d9d7bb~mv2.jpg/v1/fill/w_625,h_625,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/464bd7_7fa1c3650bff4adba1b454f6a2d9d7bb~mv2.jpg'
                      ),
                        fit: BoxFit.fill,)
                      ),height: 170,width: 150,

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.brown[700],borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))),height: 170,width: 12,

                    ),
                  ),



                ],



              ),
              Row(
                children: [
                  Container(
                    child: Text("""   Scarf
   5 JOR""",style: TextStyle(fontWeight: FontWeight.bold,fontSize:15),),

                  )
                  ,
                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Container(
                      child: Text("""   kids wool sweater
   5 JOR""",style: TextStyle(fontWeight: FontWeight.bold,fontSize:15),),


                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 42),
                    child: Container(
                      child:
                      Text("""H
1""",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                  )

                ],

              ),
              Row(
                children: [
                  Container(decoration: BoxDecoration(color: Colors.grey[200], ),width:87.5,height: 50,

                    child:Icon(Icons.home,color: Colors.orange,) ,








                  ),
                  Container(decoration: BoxDecoration(color: Colors.grey[200], ),width: 87.5,height: 50,

                    child:Icon(Icons.shopping_cart_outlined,color: Colors.grey,) ,),
                  Container(decoration: BoxDecoration(color: Colors.grey[200], ),width: 87.5,height: 50,

                    child:Icon(Icons.favorite,color: Colors.grey,) ,),
                  Container(decoration: BoxDecoration(color: Colors.grey[200], ),width: 87.5,height: 50,

                    child:Icon(Icons.account_circle,color: Colors.grey,) ,)



                ],


              )

            ],

          ),

        ),
      ),
    );
  }
}
