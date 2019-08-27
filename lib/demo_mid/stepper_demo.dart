import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StepperDemoState();
  }
}

class StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
                data: Theme.of(context).copyWith(primaryColor: Colors.black),
                child: Stepper(
                  currentStep: _currentStep,
                  onStepTapped: (int val) {
                    setState(() {
                      _currentStep = val;
                    });
                  },
                  onStepContinue: () {
                    setState(() {
                      _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                    });
                  },
                  steps: [
                    Step(
                        title: Text('Login'),
                        subtitle: Text('Login first'),
                        content: Text('Maicist jasic notification fellows'),
                        isActive: _currentStep == 0),
                    Step(
                        title: Text('Choose Your Plan'),
                        subtitle: Text('Please Choose'),
                        content: Text('Deleting static classifications'),
                        isActive: _currentStep == 1),
                    Step(
                        title: Text('Congratulations'),
                        subtitle: Text('Next Step'),
                        content: Text('You can enter the next step'),
                        isActive: _currentStep == 2),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
