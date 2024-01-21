import 'dart:math';

import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isMale = true;
  int height = 150;
  int weight = 25;
  int age = 14;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          // Gender
          Expanded(
              child: Container(
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color: isMale ? Colors.blue : Colors.grey[300],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: const Image(
                                      image: AssetImage('assets/images/male.png'),
                                  ),
                                ),
                                const Text(
                                  'MALE',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color: isMale ? Colors.grey[300] : Colors.blue,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: const Image(
                                    image: const AssetImage('assets/images/female.png'),
                                  ),
                                ),
                                const Text(
                                  'FEMALE',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
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
              ),
          ),

          // Height
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '$height',
                          style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(width: 5,),
                        const Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 140,
                        max: 220,
                        onChanged: (value){
                          setState(() {
                            height = value.round();
                          });
                        }
                    )
                  ],
                ),
              ),
            ),
          ),

          // Weight & Age
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                              ),
                            ),

                            const SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '$weight',
                                  style: const TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                const Text(
                                  'KG',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    child: Icon(Icons.remove),
                                    heroTag: 'weight.remove',
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    }
                                ),
                                FloatingActionButton(
                                    child: Icon(Icons.add),
                                    heroTag: 'weight.add',
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    }
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                              ),
                            ),

                            const SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '$age',
                                  style: const TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(width: 5,),
                                const Text(
                                  'YRs',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    child: Icon(Icons.remove),
                                    heroTag: 'age.remove',
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    }
                                ),
                                FloatingActionButton(
                                    child: Icon(Icons.add),
                                    heroTag: 'age.add',
                                    mini: true,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    }
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // calculate button
          Container(
            color: Colors.blue,
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 15),
            child: MaterialButton(
              onPressed: (){
                double results = weight / pow(height / 100, 2);
                String gender = isMale ? 'Male' : 'Female';
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      gender: gender,
                      height: height,
                      weight: weight,
                      age: age,
                      result: results,
                    )
                  ),
                );
                //
                // print(results);
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
