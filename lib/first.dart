import 'package:flutter/material.dart';
import 'package:flutter_demo/ui_helper/util.dart';
void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.red,
              textTheme: TextTheme(
                headlineLarge: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),
                headlineMedium: TextStyle(fontSize: 11,fontWeight: FontWeight.w100)
              ),
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Dashboard'),
        ),

        body: Column(
          children: [
            Text('Hello World!',style: Theme.of(context).textTheme.headlineLarge),
            Text('Hello World!',style: Theme.of(context).textTheme.headlineMedium),
            Text('Hello World!',style: Theme.of(context).textTheme.headlineLarge),
            Text('Hello World!',style: mTextStyle11()),
          ],
        )


        // Center(
        //   child: Text('Hello World!!',style: TextStyle(
        //   fontSize: 25,
        //   color: Colors.black,
        //   fontFamily: 'FontMain'
        //   ),
        //   ),
        // )

    );
  }
}