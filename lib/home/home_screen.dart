import 'package:analytics_dummy_app/second/second_screen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue.shade400,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Container(
              width: 190,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () async{
                  Navigator.push(context, CupertinoPageRoute(builder: (_) => const SecondScreen()));
                await FirebaseAnalytics.instance.logEvent(name: 'home_screen_btn_clicked', parameters: {'button_name': 'move to second screen'});
                },
                child: const Text('Go to Second Screen',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
