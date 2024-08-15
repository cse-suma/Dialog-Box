//Simple Dialog box code

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Alert box",
     home: HomePage(),
    );

  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child:FloatingActionButton(//This is button icon 1 step
        onPressed: (){

        showDialog(// This is button icons show the interface
            context: context,
            builder:(context){
              return Dialog(
                child: Container(//2 step
                  height: 300,
                  width: 300,
                  color: Colors.teal,
                  child: const Column(// 3 step
                    children: [
                      Text("Dialog box", style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20),
                      Text("Hi this is suma. Today i am try to a dialog box code. I am not expert in this code but i try to my best to learn it", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),

              );

        });

      },) ,
    ),

    );
  }
}
