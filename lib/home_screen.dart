import 'package:color_screen/color-screen.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor:  const Color(0xFFBDBDBD),
        title: Center(child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                begin: Alignment.bottomRight,
                colors: [Colors.black45,Colors.grey])
          ),
            child: const Text('Color Screen',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ),))),
      ),


      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,//nombre de grid dan la lign
          children: colorsList.map((coloItem)=>
              InkWell(
                onTap: (){//navigation
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ColorScreen(coloItem)));

                },
                child: Container(
                  margin: const EdgeInsets.only(top: 5,bottom: 10,left: 10,right: 10),
                  decoration:
                  BoxDecoration(
                    color: coloItem,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(4, 5),
                        color: Colors.grey,
                        blurRadius: 4
                      )
                    ]
                
                  ),
                
                          ),
              )).toList(),//toList pour prendre un list des item
        ),
      ),
    );
  }
}
