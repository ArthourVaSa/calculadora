import 'package:calculadora/controllers/calculator_controller.dart';
import 'package:calculadora/widgets/line_separator.dart';
import 'package:calculadora/widgets/sub_result.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'main_result.dart';

class Resultado extends StatelessWidget {
  final calculatorCtrl = Get.find<CalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: '${calculatorCtrl.primerNumero}'),
            SubResult(text: '${calculatorCtrl.operacion}'),
            SubResult(text: '${calculatorCtrl.segundoNumero}'),
            LineSeparator(),
            MainResultText(text: '${calculatorCtrl.resultado}'),
          ],
        ));
  }
}
