This is a general-purpose micro-check library. To be or not to be? This is the library!

## Features

Check if something is valid or not (true or false).

#### Currently supports:
- affirmative
- alphaNumeric
- caPostalCode
- creditCard
- dateString
- email
- eppPhone
- hexadecimal
- hexColor
- ip
- ipv4
- ipv6
- nanpPhone
- socialSecurityNumber
- timeString
- ukPostCode
- url
- usZipCode

## Usage

```dart
import 'package:is_it/is_it.dart';

var isIt = IsIt();

if (isIt.email('test@email.com')) {
    // yes it is
}
```

## Additional information

More checking features will come soon.
For any concerns send an email to jahidurnadim@gmail.com
