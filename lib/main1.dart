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
          backgroundColor: Colors.blue,
          title: Text('Flutter container'),
        ),

        body:,

//         Container(
//           child: Column(
//             children: [
//
//               catItems(),
//
//               Expanded(
//                 flex: 8,
//                 child: Container(
//                   height: 200,
//                     color: Colors.lightGreen,
//                   child: ListView.builder(itemBuilder: (context,index) => Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ListTile(
//                       leading: CircleAvatar(
//                         backgroundColor: Colors.green,
//                       ),
//                       title: Text('Name'),
//                       subtitle: Text('Mob No'),
//                       trailing: Icon(Icons.delete),
//                     ),
//                   )
//                   ),
//                 ),
//               ),
//
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   height: 200,
//                     color: Colors.orange,
//                   child: ListView.builder(itemBuilder: (context,index)=>
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           width: 100,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(11),
//                             color: Colors.blue
//                           ),
//                         ),
//                       ),
//                     itemCount: 10,scrollDirection: Axis.horizontal,
//                       ),
//                 ),
//               ),
//
//               Expanded(
//                 flex: 4,
//                 child: Container(
//                     color: Colors.green,
//                   child: GridView.count(crossAxisCount: 4 ,
//                     children:[
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                       width: 100,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(11),
//                           color: Colors.blue
//                       ),
//                       ),
//                        ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           width: 100,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(11),
//                               color: Colors.blue
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           width: 100,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(11),
//                               color: Colors.blue
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           width: 100,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(11),
//                               color: Colors.blue
//                           ),
//                         ),
//                       ),
//
//                 ],
//                 ),
//               ),
//           ),
//
//
//              ],
//               ),
//         )
//     );
//   }
// }

// class catItems extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 4,
//       child: Container(
//         height: 200,
//         color: Colors.blue,
//         child: ListView.builder(itemBuilder:( context,index) => Padding(
//           padding: const EdgeInsets.all(11.0),
//           child: SizedBox(
//             width: 100,
//             child: CircleAvatar(
//               backgroundColor: Colors.green,
//             ),
//           ),
//         ),
//           itemCount: 10, scrollDirection: Axis.horizontal,
//         ),
//       ),
//     );
//   }
// }

