import 'dart:io';

void main() {
  int loop;
  var remainder;
  var defaultValue;
  bool flag = true;
  var input = int.tryParse(stdin.readLineSync()!) ?? defaultValue;
  if (input == defaultValue) {
    print("Please enter a correct value");
    main();
  } else {
    var quotient = input ~/ 2;
    for (loop = 2; loop <= quotient; loop++) {
      remainder = input % loop;
      if (remainder == 0) {
        // print("U $loop $quotient $remainder");
        flag = false;
        break;
      } else {
        flag = true;
        // print("B $loop $quotient $remainder");
      }
    }
    if (flag == true) {
      print("entered number is a prime number");
    } else {
      print('entered number is not a prime number');
    }
  }
}
