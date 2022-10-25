import 'package:is_it/is_it.dart';

void main() {
  var isIt = IsIt();

  print('Is it a valid Email? ${isIt.email('nadim0988@gmail.com')}');
  print('Is it a valid HEX color? ${isIt.hexColor('#e6ee9c')}');
  print('Is it a valid Internet Protocol version 6? ${isIt.ipv6('182:77:2')}');
}
