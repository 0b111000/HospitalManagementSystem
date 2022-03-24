import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hospital_management_system/themes.dart';

class PatientDashboardDetails extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PatientDashboardDetails();
  }

}

class _PatientDashboardDetails extends State<PatientDashboardDetails>{
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
                      child: Text('Patient History',style: getCustomFont(primary,20,FontWeight.w400),),
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Diagnosis',style: getNormalFont(Colors.black),),
            ),
            Container(
              width: MediaQuery.of(context).size.width-40,
              margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    colors: [
                      Colors.deepOrange,
                      Colors.deepOrangeAccent,
                      Colors.orange,
                      Colors.orangeAccent
                    ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Disease Name:",style: getNormalFont(Colors.white),),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      SizedBox(
                        width: 160,
                        child: Text("Corona Virus",style: getNormalFont(Colors.white),textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Doctor Name:",style: getNormalFont(Colors.white),),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      SizedBox(
                        width: 160,
                        child: Text("Dr. Arnab Mukherjee",style: getNormalFont(Colors.white),textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Tests',style: getNormalFont(Colors.black),),
            ),
            Container(
              width: MediaQuery.of(context).size.width-40,
              margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.lightBlue,
                        Colors.lightBlueAccent
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Blood Sugar",style: getNormalFont(Colors.white),),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Haemoglobin",style: getNormalFont(Colors.white),),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Prescription',style: getNormalFont(Colors.black),),
            ),
            Container(
              width: MediaQuery.of(context).size.width-40,
              margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.greenAccent,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Paracetamol",style: getNormalFont(Colors.white),),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      SizedBox(
                        width: 160,
                        child: Text("Twice daily",style: getNormalFont(Colors.white),textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Aspirin",style: getNormalFont(Colors.white),),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      SizedBox(
                        width: 160,
                        child: Text("Once daily",style: getNormalFont(Colors.white),textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Follow up & Referrals',style: getNormalFont(Colors.black),),
            ),
            Container(
              width: MediaQuery.of(context).size.width-40,
              margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [
                        Colors.amber,
                        Colors.amberAccent
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Next Appointment:",style: getNormalFont(Colors.white),),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      SizedBox(
                        width: 160,
                        child: Text("27/04/2022",style: getNormalFont(Colors.white),textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Referred Doctor:",style: getNormalFont(Colors.white),),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      SizedBox(
                        width: 160,
                        child: Text("Dr. Mukesh Kumar",style: getNormalFont(Colors.white),textAlign: TextAlign.end,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}