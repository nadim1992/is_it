import 'package:is_it/is_it.dart';
import 'package:test/test.dart';

void main() {
  final isIt = IsIt();

  group('Tests for initialization', () {
    test('correct version', () {
      expect(IsIt.version, '0.0.1');
    });
  });

  group('Tests for regular expressions utility methods', () {
    test('affirmative is valid', () {
      expect(isIt.affirmative('yes'), isTrue);
    });
    test('affirmative is invalid', () {
      expect(isIt.affirmative('no'), isFalse);
    });

    test('alpha numeric is valid', () {
      expect(isIt.alphaNumeric('123Nadim'), isTrue);
    });
    test('alpha numeric is invalid', () {
      expect(isIt.alphaNumeric('*!'), isFalse);
    });

    test('Canadian postal code is valid', () {
      expect(isIt.caPostalCode('L8V3Y1'), isTrue);
      expect(isIt.caPostalCode('L8V 3Y1'), isTrue);
    });
    test('Canadian postal code is invalid', () {
      expect(isIt.caPostalCode('po'), isFalse);
    });

    test('credit card is valid', () {
      expect(isIt.creditCard('378282246310005'), isTrue);
    });
    test('credit card is invalid', () {
      expect(isIt.creditCard('123'), isFalse);
    });

    test('date string is valid', () {
      expect(isIt.dateString('11/11/2011'), isTrue);
      expect(isIt.dateString('10-21-2012'), isTrue);
    });
    test('date string is invalid', () {
      expect(isIt.dateString('09/21-2012'), isFalse);
    });

    test('email is valid', () {
      expect(isIt.email('test@tasty.com'), isTrue);
      expect(isIt.email('yahooGoogle@outlook.org'), isTrue);
    });
    test('email is invalid', () {
      expect(isIt.email('wrong.email'), isFalse);
    });

    test('epp phone is valid', () {
      expect(isIt.eppPhone('+90.2322456789'), isTrue);
    });
    test('epp phone is invalid', () {
      expect(isIt.eppPhone('+3'), isFalse);
    });

    test('hexa decimal is valid', () {
      expect(isIt.hexadecimal('ff'), isTrue);
      expect(isIt.hexadecimal('0xff'), isTrue);
    });
    test('hexa decimal is invalid', () {
      expect(isIt.hexadecimal('.287'), isFalse);
    });

    test('hex color is valid', () {
      expect(isIt.hexColor('#333'), isTrue);
    });
    test('hex color is invalid', () {
      expect(isIt.hexColor('.23'), isFalse);
    });

    test('IP is valid', () {
      expect(isIt.ip('198.12.3.142'), isTrue);
      expect(isIt.ip('2001:DB8:0:0:1::1'), isTrue);
    });
    test('IP is invalid', () {
      expect(isIt.ip('12:2:90'), isFalse);
    });

    test('IP version 4 is valid', () {
      expect(isIt.ipv4('198.12.3.142'), isTrue);
    });
    test('IP version 4 is invalid', () {
      expect(isIt.ipv4('983.45.22'), isFalse);
    });

    test('IP version 6 is valid', () {
      expect(isIt.ipv6('2001:DB8:0:0:1::1'), isTrue);
    });
    test('IP version 6 is invalid', () {
      expect(isIt.ipv6('883.42.11'), isFalse);
    });

    test('nanp phone is valid', () {
      expect(isIt.nanpPhone('609-555-0175'), isTrue);
    });
    test('nanp phone is invalid', () {
      expect(isIt.nanpPhone('1'), isFalse);
    });

    test('social security number is valid', () {
      expect(isIt.socialSecurityNumber('017-90-7890'), isTrue);
      expect(isIt.socialSecurityNumber('017907890'), isTrue);
    });
    test('social security number is invalid', () {
      expect(isIt.socialSecurityNumber('64'), isFalse);
    });

    test('UK post code string is valid', () {
      expect(isIt.ukPostCode('B184BJ'), isTrue);
    });
    test('UK post code string is invalid', () {
      expect(isIt.ukPostCode('2'), isFalse);
    });

    test('url is valid', () {
      expect(isIt.url('http://www.test.com'), isTrue);
    });
    test('url is invalid', () {
      expect(isIt.url('not-an-url'), isFalse);
    });

    test('US zip code is valid', () {
      expect(isIt.usZipCode('02201-1020'), isTrue);
    });
    test('US zip code is invalid', () {
      expect(isIt.usZipCode('1602'), isFalse);
    });
  });

  group('Tests for non-regular expressions utility methods', () {
    test('', () {
      expect(1 == 1, isTrue);
    });
  });
}
