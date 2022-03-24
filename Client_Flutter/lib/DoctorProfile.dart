import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hospital_management_system/themes.dart';

class DoctorProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _DoctorProfile();
  }

}

class _DoctorProfile extends State<DoctorProfile>{
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
                      child: Text('Profile',style: getCustomFont(primary,20,FontWeight.w400),),
                    )
                ),
                Column(
                  children: [
                    Stack(
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
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: secondary,
                            ),
                            child:  const Center(
                              child: Icon(Icons.edit,color: Colors.white,size: 10,),
                            )
                          )
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 30,
                  height: 50,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 30,top: 20,bottom: 10),
              child: Text('Name',style: getCustomFont(Colors.black54,15,FontWeight.w300),),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 0,bottom: 10),
                child: TextField(
                 // controller: name,
                  style: getCustomFont(Colors.black54,15,FontWeight.w300),
                  decoration: InputDecoration(
                    errorStyle:  getCustomFont(Colors.redAccent,15,FontWeight.w300),
                    hintText: 'Enter your name',
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
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 30,top: 20,bottom: 10),
              child: Text('Degree',style: getCustomFont(Colors.black54,15,FontWeight.w300),),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 0,bottom: 10),
                child: TextField(
                  // controller: name,
                  style: getCustomFont(Colors.black54,15,FontWeight.w300),
                  decoration: InputDecoration(
                    errorStyle:  getCustomFont(Colors.redAccent,15,FontWeight.w300),
                    hintText: 'Enter your Degree',
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
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 30,top: 20,bottom: 10),
              child: Text('Hospital',style: getCustomFont(Colors.black54,15,FontWeight.w300),),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 0,bottom: 10),
                child: TextField(
                  // controller: name,
                  style: getCustomFont(Colors.black54,15,FontWeight.w300),
                  decoration: InputDecoration(
                    errorStyle:  getCustomFont(Colors.redAccent,15,FontWeight.w300),
                    hintText: 'Enter your current hospital',
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
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 30,top: 20,bottom: 10),
              child: Text('Contact',style: getCustomFont(Colors.black54,15,FontWeight.w300),),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 0,bottom: 10),
                child: TextField(
                  // controller: name,
                  style: getCustomFont(Colors.black54,15,FontWeight.w300),
                  decoration: InputDecoration(
                    errorStyle:  getCustomFont(Colors.redAccent,15,FontWeight.w300),
                    hintText: 'Enter your contact information',
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
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 30,top: 20,bottom: 10),
              child: Text('Years of Experience',style: getCustomFont(Colors.black54,15,FontWeight.w300),),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 0,bottom: 10),
                child: TextField(
                  // controller: name,
                  style: getCustomFont(Colors.black54,15,FontWeight.w300),
                  decoration: InputDecoration(
                    errorStyle:  getCustomFont(Colors.redAccent,15,FontWeight.w300),
                    hintText: 'Enter your years of experience',
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
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
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
                  child: Text('Edit Details',style: getNormalFont(Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }

}