import 'package:flutter/material.dart';
import 'package:tbm_calculator/result.dart';

class CalcForm extends StatefulWidget {
  @override
  _CalcFormState createState() => _CalcFormState();
}

class _CalcFormState extends State<CalcForm> {
  bool ageRisk = false;
  bool bmiRisk = false;
  bool dmRisk = false;
  bool ckdRisk = false;
  bool cvdRisk = false;
  bool respRisk = false;
  bool htnRisk = false;
  bool immRisk = false;
  bool bipocRisk = false;
  bool pregRisk = false;

  bool result = false;

  int points = 0;

  void riskScore() {

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        child: Card(
          color: Colors.indigoAccent,
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Switch(
                                  value: ageRisk,
                                  activeTrackColor: Colors.redAccent,
                                  activeColor: Color(0xFF7a0019),
                                  onChanged: (value) {
                                    setState(() {
                                      ageRisk = !ageRisk;
                                      print(ageRisk);
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 200,
                                  child: Text("Age ≥ 55", textAlign: TextAlign.center,),
                                ),
                                Switch(
                                  value: dmRisk,
                                  activeTrackColor: Colors.redAccent,
                                  activeColor: Color(0xFF7a0019),
                                  onChanged: (value) {
                                    setState(() {
                                      dmRisk = !dmRisk;
                                      print(dmRisk);
                                    });
                                  },
                                ),
                                SizedBox(
                                    height: 50,
                                    width: 200,
                                    child: Text("Diabetes Mellitus", textAlign: TextAlign.center,),
                                ),
                                Switch(
                                  value: ckdRisk,
                                  activeTrackColor: Colors.redAccent,
                                  activeColor: Color(0xFF7a0019),
                                  onChanged: (value) {
                                    setState(() {
                                      ckdRisk = !ckdRisk;
                                      print(ckdRisk);
                                    });
                                  },
                                ),
                                SizedBox(
                                    height: 50,
                                    width: 200,
                                    child: Text("Chronic kidney disease", textAlign: TextAlign.center,),
                                ),
                                Switch(
                                  value: bipocRisk,
                                  activeTrackColor: Colors.redAccent,
                                  activeColor: Color(0xFF7a0019),
                                  onChanged: (value) {
                                    setState(() {
                                      bipocRisk = !bipocRisk;
                                      print(bipocRisk);
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 200,
                                  child: Text("Black, Indigenous, or POC", textAlign: TextAlign.center,),
                                ),
                                Switch(
                                  value: cvdRisk,
                                  activeTrackColor: Colors.redAccent,
                                  activeColor: Color(0xFF7a0019),
                                  onChanged: (value) {
                                    setState(() {
                                      cvdRisk = !cvdRisk;
                                      print(cvdRisk);
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 200,
                                  child: Text("Cardiovascular disease (age ≥ 55)", textAlign: TextAlign.center,),
                                ),
                                /*ElevatedButton(
                                  onPressed: riskScore,
                                  child: Text("CALCULATE"),
                                ),*/
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Switch(
                                    value: bmiRisk,
                                    activeTrackColor: Colors.redAccent,
                                    activeColor: Color(0xFF7a0019),
                                    onChanged: (value) {
                                      setState(() {
                                        bmiRisk = !bmiRisk;
                                        print(bmiRisk);
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 200,
                                    child: Text("BMI ≥ 35", textAlign: TextAlign.center,),
                                  ),
                                  Switch(
                                    value: htnRisk,
                                    activeTrackColor: Colors.redAccent,
                                    activeColor: Color(0xFF7a0019),
                                    onChanged: (value) {
                                      setState(() {
                                        htnRisk = !htnRisk;
                                        print(htnRisk);
                                      });
                                    },
                                  ),
                                  SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Text("Hypertension (age ≥ 55)", textAlign: TextAlign.center,),
                                  ),
                                  Switch(
                                    value: immRisk,
                                    activeTrackColor: Colors.redAccent,
                                    activeColor: Color(0xFF7a0019),
                                    onChanged: (value) {
                                      setState(() {
                                        immRisk = !immRisk;
                                        print(immRisk);
                                      });
                                    },
                                  ),
                                  SizedBox(
                                      height: 50,
                                      width: 200,
                                      child: Text("Immunocompromised", textAlign: TextAlign.center,),
                                  ),
                                  Switch(
                                    value: pregRisk,
                                    activeTrackColor: Colors.redAccent,
                                    activeColor: Color(0xFF7a0019),
                                    onChanged: (value) {
                                      setState(() {
                                        pregRisk = !pregRisk;
                                        print(pregRisk);
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 200,
                                    child: Text("Pregnant", textAlign: TextAlign.center,),
                                  ),
                                  Switch(
                                    value: respRisk,
                                    activeTrackColor: Colors.redAccent,
                                    activeColor: Color(0xFF7a0019),
                                    onChanged: (value) {
                                      setState(() {
                                        respRisk = !respRisk;
                                        print(respRisk);
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 200,
                                    child: Text("Chronic respiratory disease (age ≥ 55)", textAlign: TextAlign.center,),
                                  ),
                                ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Result(points),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
