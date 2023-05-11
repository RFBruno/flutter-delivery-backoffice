
import 'package:brasil_fields/brasil_fields.dart';

extension FormatterExtenssions on double {
  String get currencyPTBR{
    return UtilBrasilFields.obterReal(this);
  }
}