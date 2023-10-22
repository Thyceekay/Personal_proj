import 'dart:io';
// import 'dart:math';
// Implement a function to check if a given string is a palindrome (EX1)
// Write a program to find the largest element in a list of numbers (EX2)
// Create a program that simulates a dice roll and prints the result (EX3)
// Write a program that generates the Fibonacci sequence up to a given number 'n' (EX4)
// Develop a basic shopping cart program that allows users to add and remove items (EX5)
// Write a program that takes user input for a number and checks if it's even or odd (EX6)

void main(List<String> arguments) {
  
/** EX1
  print('Type any word you wish to confirm if it is a palindrome or not: ');
  String input = stdin.readLineSync()!;

  if(palindrome(input)){
    print('It is a palindrome!');
  } else {
    print('Yikes, it is not a palindrome');
  }  */

/** EX2
  List<int> element = [2, 4, 34, 5, 6, 770, 102, 56, 98, 200, 413, 111, 201, 45, 1, 50];
  element.sort();
  int thisList = element.length - 1;
  int lastNum = element.last;
  int firstNum = element[0];
  print('The numbers of elements in this list is $thisList with the smallest and largest element as $firstNum and $lastNum respectively');
  print('All the elements are listed as follows: ');
  for(int numbers in element){
    print(numbers);
  }
  **/


/** EX3
  Random random = Random();
  print("To roll the dice type 'R': ");
  String userInput = stdin.readLineSync()!;
  int max = 5;
  int min = 1;
  int diceRoll = min + random.nextInt(min + max);
  if (userInput.toLowerCase().contains('r')){
    print('The dice is... $diceRoll');
  } else{
    print('Invalid input.');
  } **/


/** EX4
  int n = 3; // Replace with the desired value of n
  int result = calculateFibonacci(n);
  print("The $n-th Fibonacci number is $result");
 */


// EX5 shoppingCart();


/* EX6
stdout.write('Input a number you wish to know if it is either a odd or an even number: ');
  num number = num.parse(stdin.readLineSync()!);

  if(number % 2 == 0){
    print('$number is even');
    } else {
      print('$number is odd');
    }
    
  print('Input the first number: ');
  num number1 = num.parse(stdin.readLineSync()!);

  print('Input the second number: ');
  num number2 = num.parse(stdin.readLineSync()!);

  print('Input the operator');
  String sign = stdin.readLineSync()!;

  if(sign == '+'){
    print(number1 + number2);
  } else if(sign == '-'){
    print(number1 - number2);
  } else if(sign == '*'){
    print(number1 * number2);
  } else if( sign == '/'){
    print(number1 / number2);
  } else{
    print('Wrong operator or not a number');
  } */
}

/* EX1
bool palindrome(String input){
  String letsTest = input.toLowerCase().trim();

  int left = 0;
  int right = letsTest.length - 1;

  while (left < right) {
    if (input[left] != input[right]){
      return false;
    }
    left++;
    right--;
  }
  return true;
}  */

/* EX4
int calculateFibonacci(int n) {
  if (n <= 0) {
    return 0; // Handle the case of n being 0 or negative
  }

  if (n == 1) {
    return 1; // Handle the case of n being 1
  }

  int a = 0;
  int b = 1;

  for (int i = 2; i <= n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }

  return b; // b now holds the nth Fibonacci number
} */


/* EX5
void shoppingCart() {
  Set<String> items = {
    'orange',
    'apple',
    'banana',
    'corn',
    'grape',
    'tomato',
  };
  List<String> shoppingCart = [];

  print('The items we have currently are: ');
  for (String fruit in items) {
    print(fruit);
  }

  bool continueShopping = true;

  while (continueShopping) {
    print('If you wish to add any item to your cart then type the name');
    String userInput = stdin.readLineSync()!;

    if (items.contains(userInput)) {
      shoppingCart.add(userInput);
      stdout.write('$userInput has been added to your cart\n');
    } else {
      print('Invalid item inputted');
    }

    print('Would you like to continue: Yes / No');
    String proceed = stdin.readLineSync()!;

    if (!proceed.toLowerCase().contains('yes')) {
      continueShopping = false;
    }
  }

  print('Items in your cart:');
  for (String item in shoppingCart) {
    print(item);
  }

  print('Thank you for shopping with us.');
} */

