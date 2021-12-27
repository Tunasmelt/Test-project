import 'dart:io';

void main(List<String> args) {
  print("whats your name:");
  var name = stdin.readLineSync();
  print("Hi $name");
}
