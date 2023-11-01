import 'package:flutter/material.dart';

class AddSubtractTwoNumbers extends StatefulWidget {
  const AddSubtractTwoNumbers({super.key});

  @override
  State<AddSubtractTwoNumbers> createState() => _AddSubtractTwoNumbersState();
}

class _AddSubtractTwoNumbersState extends State<AddSubtractTwoNumbers> {
 TextEditingController  firstNumber=  TextEditingController();
 TextEditingController secondNumber= TextEditingController();
 num sumOfTwoNumbers=0;
 num differenceOfTwoNumbers=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Appbar Scaffold: ADDITON AND SUBTRACTION'),),
      body: Column(children: [
        Text('First Number(should be greater than Second Number)'),
        TextField(cursorColor: Colors.pink,controller: firstNumber,textAlign: TextAlign.center) ,
        Text('Second Number(should be less than First Number)'),
        TextField(cursorColor: Colors.pink,controller: secondNumber,textAlign: TextAlign.center,) ,
        TextButton(onPressed: (){
          setState(() {
            sumOfTwoNumbers=int.parse(firstNumber.text)+int.parse(secondNumber.text);
            print(sumOfTwoNumbers);
          });
        }, child: Text('+'),),
        Text("sum Of Two Numbers: $sumOfTwoNumbers"),
        TextButton(onPressed: (){
          setState(() {
            differenceOfTwoNumbers= int.parse(firstNumber.text)-int.parse(secondNumber.text);
          });

        }, child: Text('-')),
        Text('difference Of Two Numbers: $differenceOfTwoNumbers')
        

      ],),

    );
  }
}



