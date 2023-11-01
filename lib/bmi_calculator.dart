
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController enterAge= TextEditingController();
  TextEditingController enterWeight= TextEditingController();
  TextEditingController enterHeight= TextEditingController();
 // TextEditingController enterGender=
  num bmi=0;
  String analysis='NO Data';
  num idealWeight=0;
var  dropDownMenu=['Slelect Gender','Male', 'Female'];
  //String defaultDropDownValue= dropDownMenu[0];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR -JANNATUL FERDAUSH',selectionColor: Colors.deepPurpleAccent,),),
      body:  Container(   padding: EdgeInsets.all(8),color: Colors.lightGreenAccent, alignment: Alignment.center,
        child: Column(children: [Text('Enter Height in meter'),
          TextField(controller: enterHeight,textAlign: TextAlign.center),
          Text('Enter Weight in KG'),
          TextField(controller: enterWeight,textAlign: TextAlign.center),
          Text('Enter Age in Year'),
          TextField(controller: enterAge,textAlign: TextAlign.center),
          //DropdownButton( icon: Icon('circle')  ,items: dropDownMenu, onChanged: );
          TextButton(onPressed: (){
            setState(() {
              bmi=double.parse(enterWeight.text)/ (double.parse(enterHeight.text)*double.parse(enterHeight.text));
             bmi= bmi.truncate();
              //  bmi= bmi.toStringAsFixed(2) as num;
              if (bmi>=25 && bmi<=29.9 ){ analysis= 'Overweight';}
              else if(bmi<18.5){analysis= 'Underweight';}
              else if(bmi>=18.5 && bmi<=24.9){analysis= ' PROPER weight';}
              else if(bmi>=30){analysis= ' Obese';}
              idealWeight= 2.2 * bmi + (3.5 * bmi) * (double.parse(enterHeight.text) - 1.5);


            });
          }, child: Text('Calculate BMI',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),),
          Text('Your BMI: $bmi'),
          Text('Analysis: $analysis'),
          const Center(child: Column(children: [Text('BMI Categories: '),Text('Underweight = <18.5, Normal weight = 18.5–24.9'), Text('Overweight = 25–29.9, Obesity = BMI of 30 or greater')
            ]
        )
          /*
        ListTile( leading: Text('BMI Categories: ',),title:Text('Underweight = <18.5, Normal weight = 18.5–24.9') ,
          subtitle: Text('Overweight = 25–29.9, Obesity = BMI of 30 or greater') ,contentPadding: EdgeInsets.all(5),
          textColor: Colors.pink,) ,
          */
        ),
          Text('Your Ideal Weight : $idealWeight')

        ],)
        ,),

    );
  }
}

