import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboard1.png'),
                fit: BoxFit.fitWidth
              ),
            ),
          ),
          ),
          Expanded(                       
            child:  Container(
            child: Column(children: [
              Text(
                "Drive Exotic Cars. \nEnjoy the luxury", 
                style: TextStyle(color: Colors.black54, fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 25,),
                Text(
                  "Premium and exotic cars for rent\nat affordable prices", 
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                  width: 320,
                  height: 54,                  
                  child: ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,

                    ),

                    child: Text("Let\'s Go", 
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    )),
       ],),
          ))
        ],
      ),
    );
  }
}