

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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

 // var arrIndex = [
 //   1,2,3,4,5,6,7,8,9,10,11
 // ];

 // late Animation animation ;
 // late AnimationController animationController;
 //
 // @override
 //  void initState() {
 //    super.initState();
 //
 //    animationController = AnimationController(vsync: this,
 //        duration: Duration(seconds: 10));
 //    animation = Tween(begin: 0.0,end: 200.0).animate(animationController);
 //    animationController.addListener((){
 //      print(animation.value);
 //      setState(() {
 //
 //      });
 //    });
 //    animationController.forward();
 //  }

  late Animation _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 4));
    _animation =  Tween(begin: 1.0,end: 0.0).animate(_animationController);

    _animationController.addListener((){

    });
    _animationController.forward();
  }

  var ListRadius = [150.0,200.0,250.0,300.0,350.0];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('My App'),
      ),

      body:Center(
        child: Stack(
          children:ListRadius.map((radius) => Container(
            width: radius*_animation.value,
            height: radius*_animation.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(1.0 - _animation.value)
            ),
          )).toList()
        ),
      )

      // Center(
      //   child: Container(
      //     width: animation.value,
      //     height: animation.value,
      //     color: Colors.blue,
      //   ),
      // )

      // Center(
      //   child: ListWheelScrollView(
      //       itemExtent: 200,
      //       children: arrIndex.map((value) => Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //           child: Center(child: Text('$value',style: TextStyle(fontSize: 25),)),
      //           decoration: BoxDecoration(
      //             color: Colors.blue,
      //             borderRadius: BorderRadius.circular(21)
      //           ),
      //           width: double.infinity,
      //         ),
      //       )).toList(),
      //   ),
      // ),

    );
  }
}