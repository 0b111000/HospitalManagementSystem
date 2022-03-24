import 'package:flutter/material.dart';
import 'package:hospital_management_system/themes.dart';

class Payment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Payment();
  }
}

List<dynamic> services = [
  {
    "name": "ICU Bed",
    "quantity": "3"
  },
  {
    "name": "ICU Bed",
    "quantity": "3"
  },
  {
    "name": "ICU Bed",
    "quantity": "3"
  },
  {
    "name": "ICU Bed",
    "quantity": "3"
  },
];

class _Payment extends State<Payment>{
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
                      child: Text('Payment Portal',style: getCustomFont(primary,20,FontWeight.w400),),
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
                  Row(
                    children: [
                      Text("Date:",style: getNormalFont(Colors.white),),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Text("24/04/2022, 17:30",style: getNormalFont(Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Row(
                children:[
                  Text("Consultation Fees: ",style: getNormalFont(Colors.black),),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  SizedBox(
                    width: 120,
                    height: 40,
                    child: Center(
                      child: TextField(
                        style: getCustomFont(Colors.black54,15,FontWeight.w300),
                        decoration: InputDecoration(
                          prefixText: "₹ ",
                          errorStyle:  getCustomFont(Colors.redAccent,15,FontWeight.w300),
                          hintStyle: getCustomFont(Colors.black54,15,FontWeight.w300),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black45)
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black45)
                          ),
                          errorBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black45)
                          ),
                          focusedErrorBorder:  OutlineInputBorder(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: primary)
                          ),
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Services Used: ",style: getNormalFont(Colors.black),),
            ),
            Column(
              children: services.map((e){
                return Padding(
                  child: ListTile(
                    title: Text(e['name'],style: getNormalFont(Colors.black),),
                    trailing: Text(e['quantity'],style: getNormalFont(Colors.grey),),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
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
                  height: 40,
                  child: TextField(
                    // controller: name,
                    style: getCustomFont(Colors.black54,15,FontWeight.w300),
                    decoration: InputDecoration(
                      prefixText: "₹ ",
                      errorStyle:  getCustomFont(Colors.redAccent,15,FontWeight.w300),
                      hintStyle: getCustomFont(Colors.black54,15,FontWeight.w300),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.black45)
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.black45)
                      ),
                      errorBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.black45)
                      ),
                      focusedErrorBorder:  OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                  child: Text("Make Payment",style: getNormalFont(Colors.white),),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            )
          ],
        ),
      )
    );
  }
}