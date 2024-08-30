import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo/detail_page.dart';

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

      home: DatailPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key?  key}):super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // RangeValues values = RangeValues(0, 100);
var _width = 200.0;
var _height = 100.0;

bool flag = true;

Decoration mydeco = BoxDecoration(
  borderRadius: BorderRadius.circular(2),
  color: Colors.blueGrey
);

var myOpacity = 1.0;

bool isVisible = true;

bool isFirst = true;
//@override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 4),(){
  //    reload();
  //   });
  // }
void reload(){
  setState(() {
    if(isFirst){
      isFirst = false;
    }else{
      isFirst = true;
    }
  });
}

  @override
  Widget build(BuildContext context) {

    //RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('My App'),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    width: _width,
                      height: _height,
                      curve: Curves.bounceIn,
                      decoration: mydeco,
                      duration: Duration(seconds: 2)
                  ),
                  SizedBox(height: 11,),
                  ElevatedButton(onPressed: (){

                    setState(() {
                      if(flag) {
                        _width = 100.0;
                        _height = 200.0;
                        mydeco = BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: Colors.orange
                        );
                        flag = false;
                      }else{
                        _width = 200.0;
                        _height = 100.0;
                        mydeco = BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                          color: Colors.blueGrey
                        );
                        flag = true;
                      }
                    });
                  }, child: Text('Animation'))
                ],
              ),
            ),
            SizedBox(height: 21,),
            AnimatedOpacity(opacity: myOpacity, duration: Duration(seconds: 2),
            curve: Curves.bounceIn,
            child: Container(
              width: 200,
              height: 100,
              color: Colors.blue,
            ),),
            SizedBox(height: 21,),
            ElevatedButton(onPressed: (){
              myOpacity = 0.0;
              setState(() {
                if(isVisible){
                  myOpacity = 0.0;
                  isVisible = false;
                }else{
                  myOpacity = 1.0;
                  isVisible = true;
                }
              });
            }, child: Text('Close')),
            SizedBox(height: 21,),
            AnimatedCrossFade(
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blueGrey,
                ),
                secondChild: Image.asset('assets/images/flutter.jpg',width: 100,height: 100,),
                firstCurve: Curves.bounceIn,
                secondCurve: Curves.bounceInOut,
                crossFadeState: isFirst ?CrossFadeState.showFirst: CrossFadeState.showSecond,
                duration: Duration(seconds: 2)),
            SizedBox(height: 21,),
            ElevatedButton(onPressed: ()
            {
              reload();
              setState(() {

              });
            }, child: Text("Show")),
            SizedBox(height: 21,),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => DatailPage()
                    ));
              },
              child: Hero(
                  tag: 'background',
                  child: Image.asset('assets/images/boy.png',width: 200,height: 200,)),
            )

          ],
        )


        // Center(
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.all(Radius.elliptical(51, 71)),
        //     child: Image.asset('assets/images/flutter.jpg',
        //     width: 200,
        //     height: 100,
        //     fit: BoxFit.fill,
        //     ),
        //   ),
        // )

        // Center(
        //   child: RangeSlider(
        //     values: values,
        //     labels: labels,
        //     divisions: 10,
        //     activeColor: Colors.green,
        //     inactiveColor: Colors.green.shade100,
        //     min: 0,
        //     max: 100,
        //     onChanged: (newValue){
        //     values = newValue;
        //     print('${newValue.start},${newValue.end}');
        //     setState(() {
        //
        //     });
        //
        //   },),
        // )

    );
  }
}