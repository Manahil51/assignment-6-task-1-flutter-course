import 'dart:io';
//Write a program that prints the numbers from 1 to 100, but for multiples of 3 it prints "Fizz", for multiples of 5 it prints "Buzz",
//and for multiples of both it prints "FizzBuzz".
// void numbertocheck() {

//   for (int i = 1; i <= 100; i++) {
//     if (i % 3 == 0 && i % 5 == 0) {
//       print('FizzBuzz');
//     } else if (i % 3 == 0) {
//       print('Fizz');
//     } else if (i % 5 == 0) {
//       print('Buzz');
//     } else {
//       print(i);
//     }
//   }
// }

// void main(){
//   numbertocheck();
// }
//Write a program that takes a string as input and prints it in reverse order.
// void main() {

//   String inputString = "Hello, World!";
//   String reversedString = reverseString(inputString);
//   print("Original String: $inputString");
//   print("Reversed String: $reversedString");
// }

// String reverseString(String input) {
//   return String.fromCharCodes(input.runes.toList().reversed);
// }

//Write a program that finds all the prime numbers between 1 and 100.

// void main() {
//   for (int i = 2; i <= 100; i++) {
//     if (isPrime(i)) {
//       print(i);
//     }
//   }
// }

// bool isPrime(int number) {
//   if (number < 2) return false;
//   for (int i = 2; i <= number / 2; i++) {
//     if (number % i == 0) {
//       return false;
//     }
//   }
//   return true;
// }
String findLongestCommonSubstring(String str1, String str2) {
  int m = str1.length;
  int n = str2.length;

  List<List<int>> dp = List.generate(m + 1, (i) => List<int>.filled(n + 1, 0));

  int maxLength = 0;
  int endIndex = 0;

  for (int i = 1; i <= m; i++) {
    for (int j = 1; j <= n; j++) {
      if (str1[i - 1] == str2[j - 1]) {
        dp[i][j] = dp[i - 1][j - 1] + 1;

        if (dp[i][j] > maxLength) {
          maxLength = dp[i][j];
          endIndex = i - 1;
        }
      } else {
        dp[i][j] = 0;
      }
    }
  }

  return str1.substring(endIndex - maxLength + 1, endIndex + 1);
}

void main() {
  String str1 = "bookshop";
  String str2 = "bookstore";

  String longestCommonSubstring = findLongestCommonSubstring(str1, str2);
  print("Longest Common Substring: $longestCommonSubstring");
}
