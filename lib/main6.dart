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
  var wtController = TextEditingController();
var ftController = TextEditingController();
var inController = TextEditingController();
var result = '';
var colors = Colors.indigo.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('My App '),
        ),

        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffffecd2),Color(0xfffcb69f)
            ],

              // begin: FractionalOffset(1.0, 0.0),
              // end: FractionalOffset(0.0, 1.0),
              stops: [0.0,0.2]
            )
          ),
          child: Center(
            child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('BMI',style: TextStyle(fontSize: 34,fontWeight: FontWeight.w500
                  ),),

                  TextField(
                    keyboardType: TextInputType.number,
                    controller:wtController,
                    decoration: InputDecoration(
                      label: Text('Enter your Weight'),
                      prefixIcon: Icon(Icons.line_weight)
                    ),
                  ),

                  SizedBox(
                    height: 21,
                  ),

                  TextField(
                    keyboardType: TextInputType.number,
                    controller:ftController,
                    decoration: InputDecoration(
                        label: Text('Enter your Height'),
                        prefixIcon: Icon(Icons.height)
                    ),
                  ),

                  SizedBox(
                    height: 21,
                  ),

                  TextField(
                    keyboardType: TextInputType.number,
                    controller:inController,
                    decoration: InputDecoration(
                        label: Text('Enter your Height'),
                        prefixIcon: Icon(Icons.height)
                    ),
                  ),

                  SizedBox(
                    height: 21,
                  ),

                  ElevatedButton(onPressed: (){
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inch = inController.text.toString();

                    if(wt!='' && ft!='' && inch!=''){
                      //BMI calculation

                      var iwt = int.parse(wt);
                      var ift = int.parse(ft);
                      var iInch = int.parse(inch);

                      var tInch = (ift*12)+iInch;
                      var tcm = tInch*2.54;
                      var tm = tcm/100;

                      var bmi = iwt/(tm*tm);
                      var msg = '';

                      if(bmi>25){
                        msg = "You are OverWeight";
                        colors = Colors.orange.shade200;
                      }else if(bmi<18){
                        msg = "You are UnderWeight";
                        colors = Colors.red.shade200;
                      }else{
                        msg = "You are Healthy!!";
                        colors = Colors.green.shade200;
                      }

                      setState(() {
                        result = '$msg \n Your BMI is: ${bmi.toStringAsFixed(2)}';

                      });

                    } else{
                      setState(() {
                        result = 'Please Enter all requier Details';
                      });
                    }
                  },
                      child: Text('Calculate')
                  ),

                  SizedBox(height: 21,),

                  Text(result,style: TextStyle(fontSize: 21),)



                ],
              ),
            ),
          ),
        )
        
        
      
      // ConstrainedBox(
        //     constraints:BoxConstraints(
        //       maxWidth: 200,
        //       maxHeight: 100
        //     ),
        //     child: Text('Hello World!! Hello World!! Hello World!! Hello World!! Hello World!! Hello World!!Hello World!!Hello World!!Hello World!!Hello World!!Hello World!!',style: TextStyle(
        //         fontSize: 25,
        //       overflow: TextOverflow.fade
        //     ),))

    );
  }
}