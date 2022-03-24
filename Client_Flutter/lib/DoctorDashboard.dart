import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hospital_management_system/themes.dart';

class DoctorDashboard extends StatefulWidget{
  const DoctorDashboard({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _DoctorDashboard();
  }
}

List<dynamic> patients = [
  {
    "name": "Sushil Kumar",
    "time": "8:00 - 9:00"
  },
  {
    "name": "Sushil Kumar",
    "time": "8:00 - 9:00"
  },
  {
    "name": "Sushil Kumar",
    "time": "8:00 - 9:00"
  },
  {
    "name": "Sushil Kumar",
    "time": "8:00 - 9:00"
  },
  {
    "name": "Sushil Kumar",
    "time": "8:00 - 9:00"
  },
];
class _DoctorDashboard extends State<DoctorDashboard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
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
                      child: Text('Dashboard',style: getCustomFont(primary,20,FontWeight.w400),),
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text("Hello,\nDr. Amarpreet Singh",style: getCustomFont(Colors.black,20,FontWeight.w400),),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Container(
                    width: 100,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primary
                    ),
                    child: Center(
                      child: Text("View Profile",style: getCustomFont(Colors.white, 12, FontWeight.w300),),
                    )
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Text("Appointments Today:",style: getCustomFont(Colors.black,20,FontWeight.w400),),
            ),
            Column(
              children: patients.map((e){
                return ListTile(
                  title: SizedBox(
                    width: 200,
                    child: Text(e['name'],style: getNormalFont(Colors.black),),
                  ),
                  subtitle: SizedBox(
                    width: 200,
                    child: Text("Patient Id",style: getCustomFont(Colors.grey,12,FontWeight.w200),
                    ),
                  ),
                  trailing: Wrap(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(e['time'],style: getNormalFont(Colors.black),),
                      ),
                      GestureDetector(
                        child: const Icon(Icons.arrow_forward_rounded,color: Colors.grey,size: 25,),
                        onTap: () {
                          return;
                        },
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      )
    );
  }
}