import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
var arrData = [
  {
    'name':'Bhoomi',
    'phoneno':'1234567890',
    'unroll':'1'
  },
  {
    'name':'Dhruvi',
    'phoneno':'1234567890',
    'unroll':'1'
  },
  {
    'name':'Shital',
    'phoneno':'1234567890',
    'unroll':'1'
  },
  {
    'name':'Bhoomi',
    'phoneno':'1234567890',
    'unroll':'1'
  },
  {
    'name':'Dhruvi',
    'phoneno':'1234567890',
    'unroll':'1'
  },
  {
    'name':'Shital',
    'phoneno':'1234567890',
    'unroll':'1'
  }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('My App '),
        ),

        body:

        Container(
          child: ListView(
            children:arrData.map((value)=>
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(value['name'].toString()),
                subtitle: Text(value['phoneno'].toString()),
                trailing: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.green,
                    child: Text(value['unroll'].toString())),
              )
            ).toList()
          ),
        )
        
        // Container(
        //   child: ListView(
        //     children: arrData.map((value){
        //       return Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           decoration: BoxDecoration(
        //               color: Colors.blue.shade300,
        //               borderRadius: BorderRadius.circular(21)
        //           ),
        //           //color: Colors.blue.shade100,
        //           child: Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Center(child: Text(value,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
        //           ),
        //         ),
        //       );
        //     }).toList()
        //   ),
        // ),
        //

    );
  }
}