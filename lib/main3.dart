import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          title: Text('Hello', style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
        ),

        body:

        // Container(
        //   width: 300,
        //   height: 200,
        //   color: Colors.blueGrey,
        //   child: Stack(
        //     children: [
        //       Positioned(
        //         bottom: 41,
        //         right: 41,
        //         child: Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.white,
        //         ),
        //       )
        //     ],
        //   ),
        // )

        // Center(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(Icons.add_circle,
        //           size: 50,
        //           color: Colors.blue,
        //         ),
        //
        //         SizedBox(
        //           width: 11,
        //         ),
        //
        //         FaIcon(FontAwesomeIcons.googlePlusG,
        //         size: 50,
        //         color: Colors.blue,
        //         )
        //
        //       ],
        //     )
        // ),


        // Center(
        //   child: RichText(text: TextSpan(
        //     style: TextStyle(color: Colors.grey,fontSize: 25),
        //     children: <TextSpan>[
        //       TextSpan(text: 'Hello '),
        //       TextSpan(text: 'World! ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.blue)),
        //     TextSpan(text:'Welcome to ' ),
        //       TextSpan(text: 'Flutter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.orange,fontStyle: FontStyle.italic,fontFamily: 'assets/fonts/EduVICWANTBeginner-VariableFont_wght.ttf'))
        //     ]
        //   )
        //   ),
        // )

        // Row(
        //   children: [
        //     Text('Hello  ',style: TextStyle(fontSize: 25,color: Colors.grey),),
        //     Text('World!',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30),),
        //   ],
        // ),

    );
  }
}