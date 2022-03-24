import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hospital_management_system/themes.dart';

class PharmacyDashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return _PharmacyDashboard();
  }

}

List<dynamic> tests = [
  {
    "name": "Blood Test A",
  },
  {
    "name": "Blood Test B",
  },
];

List<dynamic> medicines = [
  {
    "name": "Medicine Name",
    "dose": "2 time daily"
  },
  {
    "name": "Medicine Name",
    "dose": "2 time daily"
  },
  {
    "name": "Medicine Name",
    "dose": "2 time daily"
  }
];

class _PharmacyDashboard extends State<PharmacyDashboard>{
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
                      child: Text('Aman Pharmacy',style: getCustomFont(primary,20,FontWeight.w400),),
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
                padding: const EdgeInsets.only(left: 30,right: 30,top: 0,bottom: 10),
                child: TextField(

                  // controller: name,
                  style: getCustomFont(Colors.black54,15,FontWeight.w300),
                  decoration: InputDecoration(
                    //suffix: const Icon(Icons.search_rounded,color: Colors.grey,),
                    suffixIcon: const Icon(Icons.search_rounded,color: Colors.grey,),
                    errorStyle:  getCustomFont(Colors.redAccent,15,FontWeight.w300),
                    hintText: 'Search',
                    hintStyle: getCustomFont(Colors.black54,15,FontWeight.w300),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.black45)
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.black45)
                    ),
                    errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.black45)
                    ),
                    focusedErrorBorder:  OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: primary)
                    ),
                  ),
                )
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
                      Text("Doctor:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("Dr. Aman Mohanta",style: getNormalFont(Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Prescription",style: getMediumFont(Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: medicines.map((e){
                  return ListTile(
                    title: Text(e['name'],style: getNormalFont(Colors.black),),
                    trailing: Text(e['dose'],style: getNormalFont(Colors.black),),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Blood Tests",style: getMediumFont(Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: tests.map((e){
                  return ListTile(
                    title: Text(e['name'],style: getNormalFont(Colors.black),),
                  );
                }).toList(),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text("Cost: ",style: getNormalFont(Colors.black),),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: TextField(
                    // controller: name,
                    style: getCustomFont(Colors.black54,15,FontWeight.w300),
                    decoration: InputDecoration(
                      prefixText: "₹ ",
                      errorStyle:  getCustomFont(Colors.redAccent,15,FontWeight.w300),
                      hintStyle: getCustomFont(Colors.black54,15,FontWeight.w300),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.black45)
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.black45)
                      ),
                      errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.black45)
                      ),
                      focusedErrorBorder:  OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: primary)
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Container(
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
                  child: Text("Generate Bill",style: getNormalFont(Colors.white),),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}