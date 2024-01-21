import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String gender;
  final int height;
  final int weight;
  final int age;
  final double result;

  ResultScreen({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
    required this.result
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Results'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Gender: $gender', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10,),
            Text('Height: $height CM', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10,),
            Text('Weight: $weight KG', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10,),
            Text('Age: $age Years', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10,),
            Text('Results: ${result.round()}', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
