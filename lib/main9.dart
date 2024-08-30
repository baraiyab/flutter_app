import 'package:flutter/material.dart';
import 'package:flutter_demo/Profile_Screen.dart';

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

  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('My App'),
      ),

      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("DeashBoard Screen",style: TextStyle(fontSize:25),),

              SizedBox(height: 11,),

              TextField(
                controller:nameController ,
              ),

              SizedBox(height: 11,),

              ElevatedButton(onPressed: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => ProfileScreen(nameController.text.toString())
                ));

              },
                  child: Text('My Profile'))
            ],
          ),
        ),
      ),

    );
  }
}
