import 'dart:io';

int num = 1;

String? input(String message) {
  stdout.write(message);
  return stdin.readLineSync();
}

void main(List<String> args) {
  final a = input('Enter a number: ');
  final b = int.tryParse(a ?? '');
  if (b == null) {
    throw UnsupportedError('Invalid input');
  }
}
