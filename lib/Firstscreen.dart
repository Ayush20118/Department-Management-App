import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:minor_project/DepartmentScreen.dart';
import 'package:minor_project/LoginFaculty.dart';
import 'package:minor_project/placements.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                accountEmail: Text(
                  'Guest',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
           /* ListTile(
              title: const Text(
                'Login as HOD',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),*/
            ListTile(
              title: const Text(
                'Login as Faculty',
              ),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //first image
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'images/muj1.jpg',
                      fit: BoxFit.cover,
                    )),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'images/muj2.jpg',
                      fit: BoxFit.cover,
                    )),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'images/muj3.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ],
            options: CarouselOptions(
                height: 200.0,
                //enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 18 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
                initialPage: 0),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              "About MUJ",
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(fontSize: 15.0)),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Center(
              child: Text("Our Recognitions",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/symbol1.png"),
                  radius: 32,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/symbol2.jpg"),
                  radius: 32,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/symbol3.png"),
                  radius: 32,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("images/symbol4.jpg"),
                  radius: 32,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardOnePage()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150.0,
                //color: Colors.black,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("images/muj4.jpg"),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.7), BlendMode.dstATop),
                      fit: BoxFit.fill,
                    )),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100.0, left: 6),
                  child: Text(
                    "Our Placements",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Department()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150.0,
                //color: Colors.black,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: new DecorationImage(
                      image: new AssetImage("images/muj5.jpg"),
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.7), BlendMode.dstATop),
                      fit: BoxFit.fill,
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0, left: 6),
                  child: Text(
                    "Department Information",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150.0,
              //color: Colors.black,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: new DecorationImage(
                    image: new AssetImage("images/muj6.jpg"),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.dstATop),
                    fit: BoxFit.fill,
                  )),
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 6),
                child: Text(
                  "Life@Muj",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26.0,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
