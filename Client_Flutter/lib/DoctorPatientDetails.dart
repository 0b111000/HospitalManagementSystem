
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hospital_management_system/themes.dart';

class PatientDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PatientDetails();
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

class _PatientDetails extends State<PatientDetails>{
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
                      child: Text('Patient Details',style: getCustomFont(primary,20,FontWeight.w400),),
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
              child: Row(
                children: [
                  SizedBox(
                    width: 90,
                    child: Center(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/man.png'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text('Name: Mr. Susheel Kumar',style: getNormalFont(Colors.white),),
                        Text('NHID: 1000910',style: getNormalFont(Colors.white),),
                        Text('Contact: 9876543210',style: getNormalFont(Colors.white),),
                      ],
                    ),
                  )
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("Patient History",style: getMediumFont(Colors.black),),
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
                  trailing: (patientHistory.indexOf(e)==0)?Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [
                              Colors.green,
                              Colors.greenAccent
                            ]
                        )
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text("Add Diagnosis",style: getNormalFont(Colors.white),),
                  ):Wrap(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(e['date'],style: getNormalFont(Colors.black),),
                      ),
                      GestureDetector(
                        child: const Icon(Icons.arrow_forward_rounded,color: Colors.grey,size: 25,),
                        onTap: () {
                          showDialog(context: context, builder: (context){
                            return Scaffold(
                              backgroundColor: Colors.transparent,
                              body: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      bottom: 0,
                                      right: 0,
                                      left: 0,
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 10,
                                            sigmaY: 10
                                        ),
                                        child: Container(
                                          color: Colors.white.withOpacity(0),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        width: MediaQuery.of(context).size.width-40,
                                        padding: EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 110,
                                                  child: Text("Hospital:",style: getNormalFont(Colors.white),),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width-190,
                                                  child: Text("Aman Medical Clinic, Palam Colony, Delhi.",style: getNormalFont(Colors.white),),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 110,
                                                  child: Text("Doctor:",style: getNormalFont(Colors.white),),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width-190,
                                                  child: Text("Dr. Sudheer Mohanta",style: getNormalFont(Colors.white),),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 110,
                                                  child: Text("Prescription:",style: getNormalFont(Colors.white),),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width-190,
                                                  child: Text("Paracetamol, Aspirin, Combiflam",style: getNormalFont(Colors.white),),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 110,
                                                  child: Text("Dosage:",style: getNormalFont(Colors.white),),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width-190,
                                                  child: Text("Twice Daily",style: getNormalFont(Colors.white),),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        },
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