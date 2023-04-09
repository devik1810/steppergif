import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({Key? key}) : super(key: key);

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  @override
  Widget build(BuildContext context) {

    int i = 0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Steper App",
            style: TextStyle(color: Colors.white, letterSpacing: 1),
          ),
        ),
        body: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: Colors.red,
            ),
          ),
          child: Stepper(
            currentStep: i,
            onStepContinue: () {
              setState(
                    () {
                  if (i < 2) {
                    i++;
                  }
                },
              );
            },
            onStepCancel: () {
              setState(() {
                if (i > 0) {
                  i--;
                }
              });
            },
            steps: [
              Step(
                isActive: true,
                title: Text("Signup"),
                content: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Full name"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Email id"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.lock),
                        title: Text("Password"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.lock),
                        title: Text("Confirm Password"),
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text("Login"),
                content: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("User Name"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.lock),
                        title: Text("Password"),
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text("StepperExample"),
                content: TextField(),
              )
            ],
          ),
        ),
      ),
    );
  }


}