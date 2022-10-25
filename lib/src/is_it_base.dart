// @author: Jahidur Nadim (jahidurnadim@gmail.com)
// Micro check library.

class IsIt {
  static const String version = '0.0.1';

  Map regExps = {
    'affirmative': RegExp(r"^(?:1|t(?:rue)?|y(?:es)?|ok(?:ay)?)$", caseSensitive: false),
    'alphaNumeric': RegExp(r"^[A-Za-z0-9]+$"),
    'caPostalCode': RegExp(r"^(?!.*[DFIOQU])[A-VXY][0-9][A-Z]\s?[0-9][A-Z][0-9]$"),
    'creditCard': RegExp(r"^(?:(4[0-9]{12}(?:[0-9]{3})?)|(5[1-5][0-9]{14})|(6(?:011|5[0-9]{2})[0-9]{12})|(3[47][0-9]{13})|(3(?:0[0-5]|[68][0-9])[0-9]{11})|((?:2131|1800|35[0-9]{3})[0-9]{11}))$"),
    'dateString': RegExp(r"^(1[0-2]|0?[1-9])([\/-])(3[01]|[12][0-9]|0?[1-9])(?:\2)(?:[0-9]{2})?[0-9]{2}$"),
    'email': RegExp(r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$", caseSensitive: false),
    'eppPhone': RegExp(r"^\+[0-9]{1,3}\.[0-9]{4,14}(?:x.+)?$"),
    'hexadecimal': RegExp(r"^(?:0x)?[0-9a-fA-F]+$"),
    'hexColor': RegExp(r"^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$"),
    'ipv4': RegExp(r"^(?:(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])\.){3}(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])$"),
    'ipv6': RegExp(r"^((?=.*::)(?!.*::.+::)(::)?([\dA-F]{1,4}:(:|\b)|){5}|([\dA-F]{1,4}:){6})((([\dA-F]{1,4}((?!\3)::|:\b|$))|(?!\2\3)){2}|(((2[0-4]|1\d|[1-9])?\d|25[0-5])\.?\b){4})$", caseSensitive: false),
    'nanpPhone': RegExp(r"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"),
    'socialSecurityNumber': RegExp(r"^(?!000|666)[0-8][0-9]{2}-?(?!00)[0-9]{2}-?(?!0000)[0-9]{4}$"),
    'timeString': RegExp(r"^(2[0-3]|[01]?[0-9]):([0-5]?[0-9]):([0-5]?[0-9])$"),
    'ukPostCode': RegExp(r"^[A-Z]{1,2}[0-9RCHNQ][0-9A-Z]?\s?[0-9][ABD-HJLNP-UW-Z]{2}$|^[A-Z]{2}-?[0-9]{4}$"),
    'url': RegExp(r"^(?:(?:https?|ftp):\/\/)?(?:(?!(?:10|127)(?:\.\d{1,3}){3})(?!(?:169\.254|192\.168)(?:\.\d{1,3}){2})(?!172\.(?:1[6-9]|2\d|3[0-1])(?:\.\d{1,3}){2})(?:[1-9]\d?|1\d\d|2[01]\d|22[0-3])(?:\.(?:1?\d{1,2}|2[0-4]\d|25[0-5])){2}(?:\.(?:[1-9]\d?|1\d\d|2[0-4]\d|25[0-4]))|(?:(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)(?:\.(?:[a-z\u00a1-\uffff0-9]-*)*[a-z\u00a1-\uffff0-9]+)*(?:\.(?:[a-z\u00a1-\uffff]{2,})))(?::\d{2,5})?(?:\/\S*)?$", caseSensitive: false),
    'usZipCode': RegExp(r"^[0-9]{5}(?:-[0-9]{4})?$"),
  };

  bool affirmative(value) => regExps['affirmative'].hasMatch(value);
  bool alphaNumeric(value) => regExps['alphaNumeric'].hasMatch(value);
  bool caPostalCode(value) => regExps['caPostalCode'].hasMatch(value);
  bool creditCard(value) => regExps['creditCard'].hasMatch(value);
  bool dateString(value) => regExps['dateString'].hasMatch(value);
  bool email(value) => regExps['email'].hasMatch(value);
  bool eppPhone(value) => regExps['eppPhone'].hasMatch(value);
  bool hexadecimal(value) => regExps['hexadecimal'].hasMatch(value);
  bool hexColor(value) => regExps['hexColor'].hasMatch(value);
  bool ipv4(value) => regExps['ipv4'].hasMatch(value);
  bool ipv6(value) => regExps['ipv6'].hasMatch(value);
  bool nanpPhone(value) => regExps['nanpPhone'].hasMatch(value);
  bool socialSecurityNumber(value) => regExps['socialSecurityNumber'].hasMatch(value);
  bool timeString(value) => regExps['timeString'].hasMatch(value);
  bool ukPostCode(value) => regExps['ukPostCode'].hasMatch(value);
  bool url(value) => regExps['url'].hasMatch(value);
  bool usZipCode(value) => regExps['usZipCode'].hasMatch(value);

  bool ip(value) => ipv4(value) || ipv6(value);
}
