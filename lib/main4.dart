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
 // var count =0;
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Stateful'),
      ),
      
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var sum  = no1+no2;
                        result = 'The sum of $no1 and $no2 is $sum';

                        setState(() {

                        });
                      },
                          child: Text('Add')),

                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var sub  = no1-no2;
                        result = 'The differnnce of $no1 and $no2 is $sub';

                        setState(() {

                        });
                        }, child: Text('Sub')),

                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var Mul  = no1*no2;
                        result = 'The Multipication of $no1 and $no2 is $Mul';

                        setState(() {

                        });

                       }, child: Text('Mul')),

                      ElevatedButton(onPressed: (){
                        var no1 =int.parse(no1Controller.text.toString());
                        var no2 =int.parse(no2Controller.text.toString());

                        var Div  = no1/no2;
                        result = 'The Division of $no1 and $no2 is, ${Div.toStringAsFixed(2)} Div.';

                            setState(() {

                            });

                       }, child: Text('Div')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(result,style: TextStyle(fontSize: 25,color: Colors.grey),),
                )
              ],
            ),
          ),
        ),
      ),

      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('count: $count',style: TextStyle(fontSize: 25),),
      //       ElevatedButton(onPressed: (){
      //         count+=1;
      //         print(count);
      //
      //         setState(() {
      //
      //         });
      //       },
      //           child: Text('Increament Me!'))
      //     ],
      //   ),
      // ),
    );
  }
}