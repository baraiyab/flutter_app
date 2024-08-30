import 'package:flutter/material.dart';
import 'package:flutter_demo/main7.dart';


class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.orange,
       title: Text('Intro'),
     ),

     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text('Welcome!!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

           SizedBox(height: 21,),

           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(
               builder: (context) => MyHomePage(),
             ));
           },
               child: Text('Next'))
         ],
       ),
     ),
   );
  }
}
