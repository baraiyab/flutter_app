import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DatailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Detail'),
      ),
      body: Container(
        child: Image.asset('assets/images/boy.png',width: 150,height: 100,),
      ),
    );
  }

}