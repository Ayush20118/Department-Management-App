import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:minor_project/Academics.dart';
import 'package:minor_project/DepartmentScreen.dart';

// class Faculty extends StatefulWidget {
//   const Faculty({Key? key}) : super(key: key);
//
//   @override
//   _FacultyState createState() => _FacultyState();
// }
//
// class _FacultyState extends State<Faculty> {
//   int myTabIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: SafeArea(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: 220,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomLeft,
//                         colors: [
//                           Colors.purple,
//                           Colors.white,
//                         ],
//                       )
//                   ),
//                 ),
//                 Positioned(
//
//                   top: 120,
//                   left: 80,
//                   child: Container(
//
//                     height: 110,
//
//                     width:250,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.blue,
//                             blurRadius: 8,
//                             spreadRadius: 4,
//                             offset: Offset(0, 10),
//                           ),
//                         ],
//                         color: Colors.white
//                     ),
//                   ),
//                 ),
//                 Positioned(
//
//                   top: 90,
//                   right: 175,
//                   child: CircleAvatar(backgroundColor: Colors.grey,radius: 30,)
//                 ),
//               ],
//             ),
//             Container(
//               height: 100,
//               width:250,
//
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//
//                       bottomLeft: Radius.circular(12.0),bottomRight:  Radius.circular(12.0)),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.blue,
//                       blurRadius: 8,
//                       spreadRadius: 4,
//                       offset: Offset(0, 10),
//                     ),
//                   ],
//                   color: Colors.white
//               ),
//             )
//             /*Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 120.0,
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 120,
//                       width: 120,
//                       child: ClipRRect(
//                           borderRadius: BorderRadius.circular(12.0),
//                           child: Image.asset(
//                             'images/muj3.jpg',
//                             fit: BoxFit.cover,
//                           )),
//                     ),
//                     Expanded(
//                       child: ListTile(
//                         title: const Text(
//                           'Dr.A Rathi',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
//                         subtitle: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment:
//                           CrossAxisAlignment.start,
//                           children: [
//                             Text("Arathi12@gmail.com",style: TextStyle(fontSize:18),),
//                             Text("8527273408",style: TextStyle(fontSize:18),),
//                             Text("H.O.D",style: TextStyle(fontSize:18),),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left:10.0,top:10),
//               child: Text("Academics",style: TextStyle(fontSize:20),),
//             )*/
//           ],
//         ),
//       ),
//     );
//   }
// }

class Faculty extends StatefulWidget {
  @override
  _FacultyState createState() => _FacultyState();
}

class _FacultyState extends State<Faculty> {
  int myTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple.shade800,
                        Colors.deepPurpleAccent
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                    color: Colors.grey[200],
                    width: double.infinity,
                    child: Center(
                      child: Card(
                        elevation: 0,
                        color: Colors.grey[200],
                        margin: EdgeInsets.only(top: 70),
                        child: Container(
                          width: double.infinity,
                          height: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 35,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  new Academics()));
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "images/muj7.png"),
                                            //fit: BoxFit.fill,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: new DecorationImage(
                                          image:
                                              new AssetImage("images/muj9.jpg"),
                                          //fit: BoxFit.fill,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        image: new DecorationImage(
                                          image: new AssetImage(
                                              "images/muj10.png"),
                                          //fit: BoxFit.fill,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Academics",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "Expertise",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      "Publications",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 30),
                                    child: Text(
                                      "SUBJECTS CURRENTLY TEACHING",
                                      style: TextStyle(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 19),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Table(
                                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                    border: TableBorder.symmetric(
                                        inside: BorderSide.none,
                                        outside: const BorderSide(
                                            width: 1, color: Colors.black45)),
                                    children: const [
                                      TableRow(
                                          children: [
                                            SizedBox(
                                              height: 8,
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),

                                            SizedBox(
                                              height: 8,
                                            )
                                          ]),
                                      TableRow(children: [
                                        Text('SUBJECT',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                        Text('SEM',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                        Text(
                                          'COURSE CODE',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),textAlign: TextAlign.center,
                                        )
                                      ]),
                                      TableRow(
                                          children: [
                                            SizedBox(
                                              height: 8,
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),

                                            SizedBox(
                                              height: 8,
                                            )
                                          ]),
                                      TableRow(children: [
                                        Text('Computer Networks',
                                            style: TextStyle(fontSize: 14.0),textAlign: TextAlign.center,),
                                        Text('IV',
                                            style: TextStyle(fontSize: 14.0),textAlign: TextAlign.center,),
                                        Text('CN1232',
                                            style: TextStyle(fontSize: 14.0),textAlign: TextAlign.center,),
                                      ]),
                                      TableRow(
                                          children: [
                                            SizedBox(
                                              height: 8,
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),

                                            SizedBox(
                                              height: 8,
                                            )
                                          ])
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ],
          ),
          Positioned(
              // card profile
              top: MediaQuery.of(context).size.height * 0.15,
              left: 20.0,
              right: 20.0,
              child: Card(
                  child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      child: Image.asset('images/icon.png'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Dr.A Rathi',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Arathu12@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      '8527273408',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      'H.O.D',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ))),
        ],
      ),
    );
  }
}
