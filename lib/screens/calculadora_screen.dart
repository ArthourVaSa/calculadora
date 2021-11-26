import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/resultados.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/calc_button.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  final calculatorctrl = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Resultado(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: 'AC',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => calculatorctrl.resetAll(),
                ),
                CalculatorButton(
                  text: '+/-',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => calculatorctrl.changeNegativePositive(),
                ),
                CalculatorButton(
                  text: 'del',
                  bgColor: Color(0xffA5A5A5),
                  onPressed: () => calculatorctrl.delete(),
                ),
                CalculatorButton(
                  text: '/',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calculatorctrl.selectOperation('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '7',
                  onPressed: () => calculatorctrl.addNumber('7'),
                ),
                CalculatorButton(
                  text: '8',
                  onPressed: () => calculatorctrl.addNumber('8'),
                ),
                CalculatorButton(
                  text: '9',
                  onPressed: () => calculatorctrl.addNumber('9'),
                ),
                CalculatorButton(
                  text: 'X',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calculatorctrl.selectOperation('X'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '4',
                  onPressed: () => calculatorctrl.addNumber('4'),
                ),
                CalculatorButton(
                  text: '5',
                  onPressed: () => calculatorctrl.addNumber('5'),
                ),
                CalculatorButton(
                  text: '6',
                  onPressed: () => calculatorctrl.addNumber('6'),
                ),
                CalculatorButton(
                  text: '-',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calculatorctrl.selectOperation('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '1',
                  onPressed: () => calculatorctrl.addNumber('1'),
                ),
                CalculatorButton(
                  text: '2',
                  onPressed: () => calculatorctrl.addNumber('2'),
                ),
                CalculatorButton(
                  text: '3',
                  onPressed: () => calculatorctrl.addNumber('3'),
                ),
                CalculatorButton(
                  text: '+',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calculatorctrl.selectOperation('+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '0',
                  big: true,
                  onPressed: () => calculatorctrl.addNumber('0'),
                ),
                CalculatorButton(
                  text: '.',
                  onPressed: () => calculatorctrl.addDecimalPoint(),
                ),
                CalculatorButton(
                  text: '=',
                  bgColor: Color(0xffF0A23B),
                  onPressed: () => calculatorctrl.showResul(),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
