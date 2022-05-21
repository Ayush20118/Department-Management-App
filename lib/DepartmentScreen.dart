import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minor_project/Faculty.dart';
import 'package:minor_project/Firstscreen.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Department extends StatefulWidget {
  const Department({Key? key}) : super(key: key);

  @override
  _DepartmentState createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  int myTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.filter_alt_rounded),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Visibility(
                visible: myTabIndex == 0 ? true : false,
                child: const Text(
                  "Department of Computer Science and Engineering",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Visibility(
                visible: myTabIndex == 1 ? true : false,
                child: const Text(
                  "Department of Information Technology",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Visibility(
                visible: myTabIndex == 2 ? true : false,
                child: const Text(
                  "Department of Computer Science and Communication",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Visibility(
                    visible: myTabIndex == 0 ? true : false,
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
                  ),
                  Visibility(
                    visible: myTabIndex == 1 ? true : false,
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
                  ),
                  Visibility(
                    visible: myTabIndex == 2 ? true : false,
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _tabSection(context),
            /* Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Visibility(
                    visible: myTabIndex == 0? true : false, //meaning if tab ==0 nd its true then show floating action button of tab0
                    child: FloatingActionButton( onPressed: () {
                    },
                      backgroundColor: Colors.green,
                      child:Icon(
                        Icons.filter_alt_rounded,
                      ),
                  ),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TabBar(
              onTap: (index) {
                setState(() {
                  myTabIndex = index;
                });
              },
              labelStyle: const TextStyle(color: Colors.black),
              indicatorColor: Colors.black,
              isScrollable: false,
              unselectedLabelStyle: TextStyle(color: Colors.grey),
              labelColor: Colors.black,
              tabs: const [
                Tab(text: "CSE"),
                Tab(text: "IT"),
                Tab(text: "CCE"),
              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        await showModalBottomSheet(
                            context: context,
                            enableDrag: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24.0),
                                  topRight: Radius.circular(24.0)),
                            ),
                            builder: (_) => Container(
                                  height:
                                      MediaQuery.of(context).size.height / 1.5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        radius: 32,
                                        backgroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Dr Amit Rathi',
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'FoE - CSE',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                          'Currently Teaching Subject - Automata & AI'),
                                      SizedBox(
                                        height: 18,
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 15),
                                        child: Text(
                                          'Few More Details',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 23),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text('Academics'),
                                        leading: Icon(Icons.book),
                                        enableFeedback: true,
                                        trailing: Icon(Icons.arrow_forward_ios),
                                        onTap: () async {
                                          await showModalBottomSheet(
                                              context: context,
                                              isDismissible: false,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(24.0),
                                                    topRight:
                                                        Radius.circular(24.0)),
                                              ),
                                              enableDrag: true,
                                              builder: (_) => Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            1.5,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            IconButton(
                                                              onPressed: (() =>
                                                                  Navigator.pop(
                                                                      context)),
                                                              icon: Icon(Icons
                                                                  .arrow_back_ios_new),
                                                            ),
                                                            Text(
                                                                'Academic History',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 23,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                )),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        const ListTile(
                                                          leading: Icon(Icons
                                                              .school_outlined),
                                                          title: Text(
                                                            '2019',
                                                            style: TextStyle(
                                                                fontSize: 23,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          subtitle: Text(
                                                              'Graduated From BITS, Pilani '),
                                                        ),
                                                        const ListTile(
                                                          leading: Icon(Icons
                                                              .school_outlined),
                                                          title: Text(
                                                            '2015',
                                                            style: TextStyle(
                                                                fontSize: 23,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          subtitle: Text(
                                                              'High School Degree From DPS, Pilani '),
                                                        )
                                                      ],
                                                    ),
                                                  ));
                                        },
                                      ),
                                      ListTile(
                                        title: Text('Expertise'),
                                        leading: Icon(Icons.bookmarks),
                                        enableFeedback: true,
                                        trailing: Icon(Icons.arrow_forward_ios),
                                        onTap: () async {
                                          await showModalBottomSheet(
                                              context: context,
                                              isDismissible: false,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(24.0),
                                                    topRight:
                                                        Radius.circular(24.0)),
                                              ),
                                              enableDrag: true,
                                              builder: (_) => Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            1.5,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            IconButton(
                                                              onPressed: (() =>
                                                                  Navigator.pop(
                                                                      context)),
                                                              icon: Icon(Icons
                                                                  .arrow_back_ios_new),
                                                            ),
                                                            Text('Expertise',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 23,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                )),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        const ListTile(
                                                          leading: Icon(Icons
                                                              .school_outlined),
                                                          title: Text(
                                                            'Programming Language',
                                                            style: TextStyle(
                                                                fontSize: 23,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          subtitle: Text(
                                                              'C / C++ / Java'),
                                                        ),
                                                        const ListTile(
                                                          leading: Icon(Icons
                                                              .school_outlined),
                                                          title: Text(
                                                            'Programme Courses',
                                                            style: TextStyle(
                                                                fontSize: 23,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          subtitle: Text(
                                                              'Networking & Theory / Wireless Communication'),
                                                        )
                                                      ],
                                                    ),
                                                  ));
                                        },
                                      ),
                                      ListTile(
                                        title: Text('Publications'),
                                        leading: Icon(Icons.book),
                                        enableFeedback: true,
                                        trailing: Icon(Icons.arrow_forward_ios),
                                        onTap: () async {
                                          await showModalBottomSheet(
                                              isDismissible: false,
                                              context: context,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(24.0),
                                                    topRight:
                                                        Radius.circular(24.0)),
                                              ),
                                              enableDrag: true,
                                              builder: (_) => Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            1.5,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            IconButton(
                                                              onPressed: (() =>
                                                                  Navigator.pop(
                                                                      context)),
                                                              icon: Icon(Icons
                                                                  .arrow_back_ios_new),
                                                            ),
                                                            Text('Publications',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 23,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                )),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        const ListTile(
                                                          leading: Icon(Icons
                                                              .school_outlined),
                                                          title: Text(
                                                            'IEEE - IE85/3847/2020',
                                                            style: TextStyle(
                                                                fontSize: 23,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          subtitle: Text(
                                                              'How to use LiFi-System more efficently'),
                                                        ),
                                                        const ListTile(
                                                          leading: Icon(Icons
                                                              .school_outlined),
                                                          title: Text(
                                                            'ACM - Am/74747/292',
                                                            style: TextStyle(
                                                                fontSize: 23,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          subtitle: Text(
                                                              'Hands-on Computer Vision plastic mapping'),
                                                        )
                                                      ],
                                                    ),
                                                  ));
                                        },
                                      )
                                    ],
                                  ),
                                ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    'images/muj3.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                    'Dr.A Rathi-Assistant Proffeser'),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Arathi12@gmail.com"),
                                    Text("8527273408"),
                                    Text("Joined On-1/2/2023"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    'images/muj3.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                    'Dr.A Rathi-Assistant Proffeser'),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Arathi12@gmail.com"),
                                    Text("8527273408"),
                                    Text("Joined On-1/2/2023"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    'images/muj3.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                    'Dr.A Rathi-Assistant Proffeser'),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Arathi12@gmail.com"),
                                    Text("8527273408"),
                                    Text("Joined On-1/2/2023"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    'images/muj3.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                    'Dr.A Rathi-Assistant Proffeser'),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Arathi12@gmail.com"),
                                    Text("8527273408"),
                                    Text("Joined On-1/2/2023"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 120.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    'images/muj3.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                    'Dr.A Rathi-Assistant Proffeser'),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Arathi12@gmail.com"),
                                    Text("8527273408"),
                                    Text("Joined On-1/2/2023"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  //3rd tab
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ]),
          ),
        ],
      ),
    );
  }
}
