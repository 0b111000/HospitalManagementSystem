import 'package:flutter/material.dart';
import 'package:hospital_management_system/themes.dart';

class PastPatientScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PastPatientScreen();
  }
}
List<dynamic> patients = [
  {
    "name": "Mr. Mukesh Choudhary",
    "pid": "10098745"
  },
  {
    "name": "Mr. Mukesh Choudhary",
    "pid": "10098745"
  },
  {
    "name": "Mr. Mukesh Choudhary",
    "pid": "10098745"
  },
  {
    "name": "Mr. Mukesh Choudhary",
    "pid": "10098745"
  },
  {
    "name": "Mr. Mukesh Choudhary",
    "pid": "10098745"
  },
  {
    "name": "Mr. Mukesh Choudhary",
    "pid": "10098745"
  },
];
class _PastPatientScreen extends State<PastPatientScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      child: Text('Past Patients',style: getCustomFont(primary,20,FontWeight.w400),),
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
            Column(
              children: patients.map((e){
                return ListTile(
                  title: Text(e['name'],style: getNormalFont(Colors.black),),
                  subtitle: Text(e['pid'],style: getNormalFont(Colors.grey),),
                  leading: const Icon(Icons.account_circle,color: Colors.black54,),
                  trailing: const Icon(Icons.arrow_forward_rounded,color: Colors.black54,),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}