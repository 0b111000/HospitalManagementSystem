

import 'package:flutter/material.dart';
import 'package:hospital_management_system/themes.dart';

class StatScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _StatScreen();
  }

}

List<dynamic> hstats = [
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
];
List<dynamic> cstats = [
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
  {
    "name": "ICU Beds",
    "quantity": "3"
  },
];


class _StatScreen extends State<StatScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                // ignore: prefer_const_constructors
                SizedBox(
                  width: 30,
                  height: 50,
                ),
                GestureDetector(
                    child: const Icon(Icons.arrow_back_rounded,color: Colors.black),
                    onTap: (){
                      Navigator.of(context).pop();
                    }
                ),
                Expanded(
                    child: Center(
                      child: Text('Stat Screen',style: getCustomFont(primary,20,FontWeight.w400),),
                    )
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/man.png'),
                              fit: BoxFit.fill
                          )
                      ),
                    ),

                  ],
                ),
                const SizedBox(
                  width: 30,
                  height: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.deepOrange,
                      Colors.deepOrangeAccent,
                      Colors.orange,
                      Colors.orangeAccent
                    ],
                  )
              ),
              child: Text("Hospital Stats",style: getNormalFont(Colors.white),),
            ),
            Column(
              children: hstats.map((e){
                return Padding(
                  child: ListTile(
                    title: Text(e['name'],style: getNormalFont(Colors.black),),
                    trailing: Text(e['quantity'],style: getNormalFont(Colors.grey)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                );
              }).toList(),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  colors: [
                    Colors.deepOrange,
                    Colors.deepOrangeAccent,
                    Colors.orange,
                    Colors.orangeAccent
                  ],
                )
              ),
              child: Text("Hospital Chain Stats",style: getNormalFont(Colors.white),),
            ),
            Column(
              children: hstats.map((e){
                return Padding(
                  child: ListTile(
                    title: Text(e['name'],style: getNormalFont(Colors.black),),
                    trailing: Text(e['quantity'],style: getNormalFont(Colors.grey)),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}