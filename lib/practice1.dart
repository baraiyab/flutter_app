import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/material/date_picker.dart';
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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    callBack(){
      print('Clicked');
    }


    //var time = DateTime.now();
    // var arrColors = [Colors.deepPurple,
    //   Colors.green,
    //   Colors.black,
    //   Colors.blue,
    //   Colors.lightGreenAccent,
    //   Colors.red,
    //   Colors.amber
    // ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Flutter container'),
      ),

      body:

      ElevatedButton(
        onPressed:callBack(),
          child:Text('Click Me!!') ,
      )

      // GridView.builder(itemBuilder:(context,index){
      //  return Container(color: arrColors[index],);
      // },
      // itemCount: arrColors.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //       mainAxisSpacing: 11,
      //       crossAxisSpacing: 11
      //   ),
      // )
      //

    // Column(
    //     children: [
    //       Container(
    //         height: 200,
    //         child: GridView.count(crossAxisCount: 3,
    //           crossAxisSpacing: 11,
    //           mainAxisSpacing: 11,
    //           children: [
    //             Container(color: arrColors[0]),
    //             Container(color: arrColors[1]),
    //             Container(color: arrColors[2]),
    //             Container(color: arrColors[3]),
    //             Container(color: arrColors[4]),
    //

                // Container(
                //   height: 100,
                // ),

      //          Container(
      //            height: 200,
      //            child: GridView.extent(maxCrossAxisExtent: 100,
      //              children: [
      //              Container(color: arrColors[0]),
      //              Container(color: arrColors[1]),
      //              Container(color: arrColors[2]),
      //              Container(color: arrColors[3]),
      //              Container(color: arrColors[4]),
      //               ]
      //            ),
      //          )
      //         ],
      //         ),
      //     ),
      //   ],
      // ),
      //
      //





      // Center(
      //   child: Container(
      //     width: 200,
      //     height: 200,
      //     child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Text('Select Date',style: TextStyle(fontSize: 25),
      //             ),
      //             ElevatedButton(onPressed: () async{
      //                   DateTime? datePicked = await showDatePicker(
      //                   context: context,
      //                   initialDate:DateTime.now() ,
      //                   firstDate: DateTime(2021),
      //                   lastDate: DateTime(2024),
      //
      //               );
      //
      //               if(datePicked!=null){
      //                 print('Selected date: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
      //               }
      //
      //             },
      //                 child: Text('Show')
      //             ),
      //             ElevatedButton(onPressed: ()async{
      //               TimeOfDay? pickedTime =await showTimePicker(
      //                   context: context,
      //                   initialTime: TimeOfDay.now(),
      //                 initialEntryMode: TimePickerEntryMode.dial
      //               );
      //               if(pickedTime!=null){
      //                 print('Selected time:${pickedTime.hour}-${pickedTime.minute}');
      //               }
      //
      //             }, child: Text('Select Time'),
      //             )
      //           ],
      //         ),
      //   ),
      //   ),
      //

      // Center(
      //   child: Container(
      //     width: 200,
      //     height: 200,
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text(
      //           'Current Time : ${DateFormat('yMMMd').format(time)}',
      //           style: TextStyle(fontSize: 25),
      //         ),
      //         ElevatedButton(
      //             onPressed: () {
      //               setState(() {});
      //             },
      //             child: Text('Current Time'))
      //       ],
      //     ),
      //   ),
      // ),

    );
  }
}
