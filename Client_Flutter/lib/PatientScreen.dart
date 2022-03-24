

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hospital_management_system/themes.dart';

class PatientDashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PatientDashboard();
  }

}


List patientHistory = [
  {
    "name": "Disease Name",
    "outcome": "Disease Outcome",
    "date": "17/05/2021"
  },
  {
    "name": "Disease Name",
    "outcome": "Disease Outcome",
    "date": "17/05/2021"
  },
  {
    "name": "Disease Name",
    "outcome": "Disease Outcome",
    "date": "17/05/2021"
  },
];

class _PatientDashboard extends State<PatientDashboard>{
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
                      child: Text('Patient Dashboard',style: getCustomFont(primary,20,FontWeight.w400),),
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
              width: MediaQuery.of(context).size.width-50,
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.redAccent,
                        Colors.deepOrange,
                        Colors.deepOrangeAccent,
                        Colors.orange,
                        Colors.orangeAccent
                      ]
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Name:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("Mr. Susheel Kumar",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Patient ID:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("100123402",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Contact:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("9876543210",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Height:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("170 cm",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Weight:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("89 Kg",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Blood Group:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("B +",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Gender:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("Male",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Date of Birth:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("12/05/1970",style: getNormalFont(Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("Current Status",style: getMediumFont(Colors.black),),
            ),
            Container(
              width: MediaQuery.of(context).size.width-50,
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.greenAccent
                      ]
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Disease Name:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("Corona Virus",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Doctor Name:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("Dr. Arnab Mohanta",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Doctor Contact:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("9876543210",style: getNormalFont(Colors.white),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Referred To:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("Dr. Mukesh Mohanta",style: getNormalFont(Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("History",style: getMediumFont(Colors.black),),
            ),
            Column(
              children: patientHistory.map((e){
                return ListTile(
                  title: SizedBox(
                    width: 200,
                    child: Text(e['name'],style: getNormalFont(Colors.black),),
                  ),
                  subtitle: SizedBox(
                    width: 200,
                    child: Text(e["outcome"],style: getCustomFont(Colors.grey,12,FontWeight.w200),
                    ),
                  ),
                  trailing: Wrap(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(e['date'],style: getNormalFont(Colors.black),),
                      ),
                      GestureDetector(
                        child: const Icon(Icons.arrow_forward_rounded,color: Colors.grey,size: 25,),
                        onTap: () {
                          return;
                        }
                      )
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}