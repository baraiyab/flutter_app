import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  void initState() {
    super.initState();

    getValue();
  }
  static const String KEYNAME = "name";
  var nameValue = "No Value Saved";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('My App'),
      ),

      body:Container(
        child: Center(
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label:Text ("Name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21)
                    )
                  ),
                ),
                SizedBox(height: 11,),
                ElevatedButton(onPressed: ()async{
                  var name = nameController.text.toString();
                  var prefs =await SharedPreferences.getInstance();
                  prefs.setString(KEYNAME, nameController.text.toString());

                }, child: Text('Save')),
                SizedBox(height: 11,),
                Text(nameValue),
              ],
            ),
          ),
        ),
      ),

    );
  }

  void getValue() async{
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString("name");
    nameValue = getName  ??  "No Value Saved";
    setState(() {

    });
  }
}