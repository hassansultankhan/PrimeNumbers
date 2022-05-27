import 'dart:io';

void main() {
  int loop;
  var remainder;
  var defaultValue;
  var input = int.tryParse(stdin.readLineSync()!) ?? defaultValue;
  if (input == defaultValue) {
    print("Please enter a correct value");
    main();
  }
  else{
    var quotient = input ~/ 2;
    for (loop = 2; loop <= quotient; loop++) {
      remainder = input % loop;
      if (remainder == 0) {
        print("entered number is not a prime number");
        print("Remainder:$remainder\nQuotient:$quotient");
        return;
      }
    }
    print("$input is prime number");
  }
}