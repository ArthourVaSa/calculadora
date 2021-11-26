import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var primerNumero = '10'.obs;
  var segundoNumero = '20'.obs;
  var resultado = '30'.obs;
  var operacion = '+'.obs;

  resetAll() {
    primerNumero.value = '0';
    segundoNumero.value = '0';
    resultado.value = '0';
    operacion.value = ' ';
  }

  addNumber(String number) {
    if (resultado.value == '0') return resultado.value = number;

    if (resultado.value == '-0') {
      return resultado.value = '-' + number;
    }

    resultado.value = resultado.value + number;
  }

  changeNegativePositive() {
    if (resultado.startsWith('-')) {
      resultado.value = resultado.value.replaceFirst('-', '');
    } else {
      resultado.value = '-' + resultado.value;
    }
  }

  addDecimalPoint() {
    if (resultado.contains('.')) return;

    if (resultado.startsWith('0')) {
      resultado.value = '0.';
    } else {
      resultado.value = resultado.value + '.';
    }
  }

  selectOperation(String newOperation) {
    operacion.value = newOperation;
    primerNumero.value = resultado.value;
    resultado.value = '0';
  }

  delete() {
    if (resultado.value.replaceAll('-', '').length > 1) {
      resultado.value =
          resultado.value.substring(0, resultado.value.length - 1);
    } else {
      resultado.value = '0';
    }
  }

  showResul() {
    double num1 = double.parse(primerNumero.value);
    double num2 = double.parse(resultado.value);
    double resul = 0;

    segundoNumero.value = resultado.value;

    switch (operacion.value) {
      case '+':
        resul = num1 + num2;
        resultado.value = resul.toString();
        break;
      case '-':
        resul = num1 - num2;
        resultado.value = resul.toString();
        break;
      case 'X':
        resul = num1 * num2;
        resultado.value = resul.toString();
        break;
      case '/':
        resul = num1 / num2;
        resultado.value = resul.toString();
        break;
      default:
        return resultado.value = '0';
    }
    if (resultado.value.endsWith('.0')) {
      resultado.value =
          resultado.value.substring(0, resultado.value.length - 2);
    }
  }
}
