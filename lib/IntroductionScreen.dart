import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:minor_project/Firstscreen.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Welcome to Manipal University Jaipur",
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: const Center(
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
            ),
            image: Image.asset(
              "images/intro4.jpg",
              height: 300,
              fit: BoxFit.fill,
            ),
          ),
          PageViewModel(
            title: "Best in Academics",
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: const Center(
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                textAlign: TextAlign.justify,
              ),
            ),
            image: Image.asset(
              "images/intro4.jpg",
              height: 300,
              fit: BoxFit.fill,
            ),
          ),
          PageViewModel(
            title: "Best faculty",
            decoration: const PageDecoration(
              titleTextStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: const Center(
              child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"),
            ),
            image: Image.asset(
              "images/intro4.jpg",
              height: 300,
              fit: BoxFit.fill,
            ),
          ),
        ],
        onDone: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Firstpage()));
        },
        showSkipButton: false,
        showNextButton: true,
        animationDuration: 1000,
        curve: Curves.fastOutSlowIn,
        dotsDecorator: const DotsDecorator(
          spacing: EdgeInsets.all(5.0),
          activeColor: Colors.grey,
          activeSize:  Size(20, 10),
        ),
        // skip:Text("Back",style: TextStyle(color: Colors.blueGrey,fontSize: 15.0),),
        next: const Padding(
          padding:  EdgeInsets.only(top: 8.0),
          child: Text(
            "Next",
            style: TextStyle(color: Colors.black, fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
        done: const Padding(
          padding:  EdgeInsets.only(top: 8.0),
          child: Text(
            "Get Started",
            style: TextStyle(color: Colors.black, fontSize: 20.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
