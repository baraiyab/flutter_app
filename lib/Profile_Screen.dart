import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
var nameFromhome;

ProfileScreen(this.nameFromhome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Container(
        color: Colors.blueGrey.shade200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome,$nameFromhome",style: TextStyle(fontSize: 34,color: Colors.white),),

              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              },
                  child: Text('Back')),
            ],
          ),
        ),
      ),
    );
  }

}