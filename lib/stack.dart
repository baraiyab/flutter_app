import 'package:flutter/material.dart';

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
        backgroundColor: Colors.blueAccent,
        title: Text('Hello',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
      ),

      body:

      // Column(
      //   children: [

            // child: ConstrainedBox(
            //   constraints: BoxConstraints(
            //     minHeight: 40,
            //     minWidth: 200,
            //     maxHeight: 80,
            //     maxWidth: 400,
            //   ),

      //     SizedBox.square(
      //       dimension: 100,
      //       child: ElevatedButton(onPressed: (){
      //         print('Clicked');
      //         },
      //           child: Text('Click me!')),
      //           ),
      //
      //     SizedBox(
      //       width: 20,
      //       height: 20,
      //     ),
      //
      //
      //     SizedBox.square(
      //       dimension: 100,
      //       child: ElevatedButton(onPressed: (){
      //         print('Clicked');
      //       },
      //           child: Text('Click me!')),
      //     ),
      //
      //   ],
      // ),


      // Container(
      //   // width: double.infinity,
      //   // height: double.infinity,
      //   child: Wrap(
      //     direction: Axis.horizontal,
      //      // alignment: WrapAlignment.spaceEvenly,
      //       children: [
      //         Container(
      //           width: 70,
      //           height: 70,
      //           color: Colors.orange,
      //         ),
      //
      //         Container(
      //           width: 70,
      //           height: 70,
      //           color: Colors.black,
      //         ),
      //         Container(
      //           width: 70,
      //           height: 70,
      //           color: Colors.red,
      //         ),
      //         Container(
      //           width: 70,
      //           height: 70,
      //           color: Colors.black,
      //         ),
      //         Container(
      //           width: 70,
      //           height: 70,
      //           color: Colors.brown,
      //         ),
      //         Container(
      //           width: 70,
      //           height: 70,
      //           color: Colors.orange,
      //         ),
      //         Container(
      //           width: 70,
      //           height: 70,
      //           color: Colors.black,
      //         ),
      //         Container(
      //           width: 70,
      //           height: 70,
      //           color: Colors.brown,
      //         ),
      //
      //       ],
      //     ),
      // ),

      // Container(
      //   width: 300,
      //   height: 300,
      //   child: Stack(
      //     children: [
      //       Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.blueGrey,
      //       ),
      //
      //       Positioned(
      //         left: 31,
      //         top: 31,
      //         child: Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.grey,
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
