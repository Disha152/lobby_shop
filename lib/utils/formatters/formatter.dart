
import 'package:intl/intl.dart';


class CustomFormatter {

  static String formatDate(DateTime date) => DateFormat('dd/MM/yyyy').format(date);

  static String formatTime(DateTime date) => DateFormat('HH:mm').format(date);

  static String formatDateTime(DateTime date) => DateFormat('dd/MM/yyyy HH:mm').format(date);

  static String formatCurrency(double amount) => NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(amount);

  static String formatPercentage(double percentage) => NumberFormat.decimalPercentPattern(decimalDigits: 2).format(percentage);  
  
  static String internationalFormatPhoneNumber(String phoneNumber) => phoneNumber.replaceAllMapped(RegExp(r'^(\d{2})(\d{5})(\d{4})$'), (match) => '(${match[1]}) ${match[2]}-${match[3]}');


}