import 'package:flutter/material.dart';
import 'package:flutter_demo/ui_helper/util.dart';
import 'package:flutter_demo/widgets/rounded_btn.dart';


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
        primarySwatch: Colors.green,

      ),

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key?  key}):super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter container'),
      ),

      body:

      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 100,
      //         child: RoundedButton(
      //             btnName:'Login',
      //             icon:Icon(Icons.lock),
      //             callback:(){
      //                print('Logged in!');
      //         },
      //         textStyle:mTextStyle11()
      //         ),
      //       ),
      //       Container(height: 11,),
      //       Container(
      //         width: 100,
      //         child: RoundedButton(
      //             btnName:'pressed',
      //             icon:Icon(Icons.lock),
      //             callback:(){
      //               print('Logged in!');
      //             },
      //             bgColor: Colors.blue,
      //             textStyle:mTextStyle11()
      //         ),
      //       ),
      //     ],
      //   ),
      // )


    );
  }
}