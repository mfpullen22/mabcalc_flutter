import 'package:flutter/material.dart';

class About extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Card(
          color: Colors.white,
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("For those with COVID-19 without access to monoclonal "
                    "antibody or antiviral therapies, consider volunteering for "
                    "a clinical research study testing existing medicines "
                    "(FDA-approved for other conditions) which have a known "
                    "safety track record. Study medicines are couriered to your "
                    "home same day or overnight. Go to CovidOut.com for more "
                    "information."),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
