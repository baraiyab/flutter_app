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
  // var emailText = TextEditingController();
  // var passText = TextEditingController();
  // var phonText = TextEditingController();


  @override
  Widget build(BuildContext context) {

    //var arrname = ['Bhoomi','Shital','Nayan','Hardik','Vivan'];
var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.orange,
         title: Text('Flutter container'),
    ),

      body:

      Text('Current Time : $time',style: TextStyle(fontSize: 25),
      ),

      // Center(
      //     child: Container(
      //         width: 300,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             TextField(
      //               keyboardType: TextInputType.emailAddress,
      //               controller: emailText,
      //               //enabled: false,
      //              decoration: InputDecoration(
      //                hintText: 'Enter Email',
      //                focusedBorder: OutlineInputBorder(
      //                    borderRadius: BorderRadius.circular(20),
      //                    borderSide: BorderSide(
      //                        color: Colors.orange
      //                    )
      //                ),
      //                enabledBorder: OutlineInputBorder(
      //                    borderRadius: BorderRadius.circular(20),
      //                    borderSide: BorderSide(
      //                        color: Colors.blueAccent
      //                    )
      //                ),
      //                disabledBorder: OutlineInputBorder(
      //                    borderRadius: BorderRadius.circular(20),
      //                    borderSide: BorderSide(
      //                        color: Colors.black
      //                    )
      //                ),
      //               // suffixText: "Username Exist",
      //
      //                prefixIcon: Icon(Icons.email,color: Colors.orange),
      //                border: OutlineInputBorder(
      //                  borderRadius: BorderRadius.circular(20),
      //                  borderSide: BorderSide(
      //                    color: Colors.orange
      //                  )
      //                )
      //                       ),
      //             ),
      //             Container(
      //               height: 11,
      //             ),
      //             TextField(
      //               controller: passText,
      //                 obscureText: true,
      //                 obscuringCharacter: '*',
      //                 decoration: InputDecoration(
      //                   hintText: 'Enter password',
      //                     prefixIcon: IconButton(
      //                     icon: Icon(Icons.remove_red_eye,color: Colors.orange,),
      //                     onPressed:(){
      //                     }
      //                 ),
      //                     border: OutlineInputBorder(
      //                         borderRadius: BorderRadius.circular(20),
      //                         borderSide: BorderSide(
      //                             color: Colors.orange
      //                         )
      //                     )
      //                 ),
      //               ),
      //             Container(
      //               height: 11,
      //             ),
      //             TextField(
      //               keyboardType: TextInputType.phone,
      //               controller: phonText,
      //               decoration: InputDecoration(
      //                   hintText: 'Enter mobile no',
      //                   prefixIcon: IconButton(
      //                       icon: Icon(Icons.phone,color: Colors.orange,),
      //                       onPressed:(){
      //                       }
      //                   ),
      //                   border: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(20),
      //                       borderSide: BorderSide(
      //                           color: Colors.orange
      //                       )
      //                   )
      //               ),
      //             ),
      //             Container(
      //               height: 11,
      //             ),
      //             ElevatedButton(onPressed: (){
      //               String uEmail = emailText.text.toString();
      //               String uPass  = passText.text.toString();
      //
      //               print("Email: $uEmail,Pass: $uPass");
      //             },
      //                 child: Text('login')
      //             )
      //           ],
      //         )
      //     )
      // )

      // Center(
      //     child:
      //     Card(
      //       elevation: 20,
      //      child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //        child: Text('Hello world!!',style: TextStyle(fontSize: 25),)),
      //   ),
      // )
      //
      // Center(child:
      //   CircleAvatar(
      //     child:Container(
      //       width: 50,
      //       height: 50,
      //       child: Column(
      //         children: [
      //           Container(
      //             width: 40,
      //             height: 40,
      //             child:
      //             Image.asset('assets/images/boy.png'),
      //           ),
      //             Text('name',style: TextStyle(fontSize: 11),),
      //
      //         ],
      //       ),
      //     ),
      //     backgroundColor: Colors.orange,
      //     maxRadius: 60,
      //       ),
      //
      //   ),


    );
    }
}