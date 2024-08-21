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
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 21,fontWeight: FontWeight.w500,color: Colors.blueAccent),

      )
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

     //var arrname = ['Bhoomi','Shital','Nayan','Hardik','Vivan'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter container'),
       ),

       body:Column(
         children: [
           Text('Hello World!!',style: Theme.of(context).textTheme.headlineLarge),
           Text('Hello World!!'),
           Text('Hello World!!'),
           Text('Hello World!!'),
         ],
       )

       // ListView.separated(itemBuilder: (context,index){
       //   return Row(
       //     children: [
       //       Padding(
       //         padding: const EdgeInsets.all(8.0),
       //         child: Column(
       //           children: [
       //             Text(arrname[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)
       //             ),
       //         Text(arrname[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)
       //         )
       //           ],
       //         ),
       //       ),
       //   Padding(
       //     padding: const EdgeInsets.all(8.0),
       //     child: Column(
       //       children: [
       //         Text(arrname[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)
       //         ),
       //     Text(arrname[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)
       //     )
       //
       //       ],
       //     ),
       //   ),
       //   Padding(
       //     padding: const EdgeInsets.all(8.0),
       //     child: Text(arrname[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)
       //     ),
       //   ),
       //   Padding(
       //     padding: const EdgeInsets.all(8.0),
       //     child: Text(arrname[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)
       //     ),
       //   )
       //
       //   ],
       //   );
       // },
       //   itemCount: arrname.length,
       //   //reverse: true,
       //   //scrollDirection: Axis.horizontal,
       //   separatorBuilder: (context,index){
       //     return Divider(height: 200,thickness: 2,);
       //   },
       //
       // )
       //


      //
      //     ListView.builder(itemBuilder: (context,index){
    //       return Text(arrname[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)
    // );
    //     },
    // itemCount: arrname.length,
    //       //reverse: true,
    //       itemExtent: 500,
    //     )
    //
        // Center(
        //   child: ListView(
        //     scrollDirection: Axis.horizontal,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('One',style: TextStyle(
        //         fontSize: 25,
        //         fontWeight: FontWeight.w500
        //         ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Two',style: TextStyle(
        //             fontSize: 25,
        //             fontWeight: FontWeight.w500
        //         ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Three',style: TextStyle(
        //             fontSize: 25,
        //             fontWeight: FontWeight.w500
        //         ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text('Four',style: TextStyle(
        //             fontSize: 25,
        //             fontWeight: FontWeight.w500
        //         ),
        //         ),
        //       ),
        //     ],
        //   ),
        // )

        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: SingleChildScrollView(
        //             scrollDirection: Axis.horizontal,
        //           child: Row(
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.only(right: 11),
        //                 width: 200,
        //                 height: 200,
        //                 color: Colors.orange,
        //               ),
        //               Container(
        //                 margin: EdgeInsets.only(right: 11),
        //                 width: 200,
        //                 height: 200,
        //                 color: Colors.red,
        //               ),
        //               Container(
        //                 margin: EdgeInsets.only(right: 11),
        //                 width: 200,
        //                 height: 200,
        //                 color: Colors.black,
        //               ),
        //             ],
        //           )
        //           ),
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(bottom: 11),
        //           // width: 300,
        //           height: 300,
        //           color: Colors.blue,
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(bottom: 11),
        //           // width: 300,
        //           height: 300,
        //           color: Colors.black,
        //         ),
        //         Container(
        //           margin: EdgeInsets.only(bottom: 11),
        //           // width: 300,
        //           height: 300,
        //           color: Colors.orange,
        //         )
        //       ],
        //     ),
        //   ),
        // )

        // Center(
        //   child: InkWell(
        //     // child: Text('Click!'),
        //     onDoubleTap: (){
        //       print('Double tap Click!');
        //     },
        //
        //     child: Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.orange,
        //       child: Center(
        //         child: InkWell(
        //           onTap: (){
        //            print('Tap pressed');
        //         },
        //           child: Text('Click here!',style: TextStyle(
        //           fontSize: 25,
        //           ),
        //           ),
        //           ),
        //       )
        //
        //     ),
        //   )
        // )



    //     Container(
    //     //  width: 500,
    //     // height: 400,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children:[Container(
    //         // width: 500,
    //         // height: 400,
    //         child:
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Text('Bhhomi',style: TextStyle(fontSize: 25,color: Colors.deepOrange)),
    //           Text('Shital',style: TextStyle(fontSize: 25)),
    //           Text('Bharti',style: TextStyle(fontSize: 25)),
    //
    //           TextButton(
    //               child: Text('Press',style: TextStyle(
    //                   fontSize: 25,
    //                   color: Colors.black,
    //                 backgroundColor: Colors.blue
    //               ),
    //               ),
    //               onPressed: (){
    //                 print('pressed');
    //     },
    //     ),
    //         ],
    //       ),
    // ),
    //         Text('Nayan',style: TextStyle(fontSize: 25,color: Colors.deepOrange)),
    //         Text('Hardik',style: TextStyle(fontSize: 25)),
    //         Text('Vivan',style: TextStyle(fontSize: 25)),
    //
    //         ElevatedButton(
    //           child: Text('click me!',style: TextStyle(
    //           fontSize: 25,
    //           color: Colors.black87,
    //           backgroundColor: Colors.blue
    //           ),
    //           ),
    //           onPressed:(){
    //           print('Elevatedbutton is cpressed!');
    //         },
    //         ),
    //       ],
    //      )
    //     )


       //  Center (
       //    child: Container(
       //      width: 200,
       //      height: 200,
       //
       //      child: Image.asset('assets/images/flutter.jpg')
       // )
       //  )


      // Center (child:Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.lightGreenAccent,
      //   child: Text('Bhoomi'),
      // ),
      // )


      // OutlinedButton(
      //   child: Text('outline  Button!'),
      //   onPressed: (){
      //     print('outlinedButton pressed!');
      //
      //   },
      // )



    //     ElevatedButton(
    //       child: Text('Elevated Button!'),
    //       onPressed: (){
    //         print('Button pressed!');
    //
    // },
    //   )



    //     TextButton(
    //        child: Text('Click me!',style: TextStyle(
    //          fontSize: 25,
    //          color: Colors.amber,
    //          backgroundColor: Colors.lightGreenAccent
    //
    //        ),
    //        ),
    //         onPressed: (){
    //          print('Text button tapped');
    // },
    //     onLongPress: (){
    //          print('Long pressed!!');
    //     },
    // )



      // Center (child:Container(
      //  width: 200,
      //  height: 300,
      //  color: Colors.lightGreenAccent,
      //
      //   child: Center(child: Text('Hello Flutter' , style: TextStyle(
      //   fontSize: 25,
      //   color: Colors.black87,
      //   fontWeight: FontWeight.w500,
      //   backgroundColor: Colors.white12
      //   )
      // ),
      // )
      // )
      // )


    );
  }
}
