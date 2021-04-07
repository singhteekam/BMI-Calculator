import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var age = 20.0, height=160.0, weight=50.0, bmi=0.0;

  var gender="Male";

  checkBMI(){
    var heightInMtr= height/100;
    bmi= weight/(heightInMtr*heightInMtr);
    setState(() {
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Text(
                'BMI: $bmi',
                textScaleFactor: 2,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red,)
              ),
             
             SizedBox(
                height: 15,
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                ),
                child: Column(
                  children: [
                    Text('Gender: $gender', textScaleFactor: 2,),
                    ListTile(
                      leading: Radio(
                        value: "Male",
                        groupValue: gender,
                        onChanged: (var value){
                          setState(() {
                            gender= value.toString();
                          });
                        },
                      ),
                      title: Text('Male'),
                    ),

                    ListTile(
                      leading: Radio(
                        value: "Female",
                        groupValue: gender,
                        onChanged: (var value){
                          setState(() {
                            gender= value.toString();
                          });
                        },
                      ),
                      title: Text('Female'),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              //Age
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[100],
                ),
                child: Column(
                  children: [
                    Text(
                      'Age: $age years',
                      textScaleFactor: 2,
                    ),
                    new Slider(
                      value: age,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      label: '${age.round()}',
                      onChanged: (double value) {
                        setState(() {
                          age = value.roundToDouble();
                        });
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              //Weight
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal[100],
                ),
                child: Column(
                  children: [
                    Text(
                      'Weight: $weight Kg',
                      textScaleFactor: 2,
                    ),
                    new Slider(
                      value: weight,
                      min: 0,
                      max: 200,
                      divisions: 200,
                      label: '${weight.round()}',
                      onChanged: (double value) {
                        setState(() {
                          weight = value.roundToDouble();
                        });
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              //Height
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[100],
                ),
                child: Column(
                  children: [
                    Text(
                      'Height: $height cm',
                      textScaleFactor: 2,
                    ),
                    new Slider(
                      value: height,
                      min: 1,
                      max: 250,
                      divisions: 250,
                      label: '${age.round()}',
                      onChanged: (double value) {
                        setState(() {
                          height = value.roundToDouble();
                        });
                      },
                    ),
                  ],
                ),
              ),
              
              SizedBox(
                height: 15,
              ),

              ElevatedButton(
                onPressed: ()=>checkBMI(),
               child: Text('Check')
               )
            ],
          ),
        ),
      ),
    );
  }
}
