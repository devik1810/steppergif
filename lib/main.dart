import 'package:flutter/material.dart';
import 'package:steppergif/screen/view/stepperexample.dart';
void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => StepperExample(),
        },
      )
  );

}