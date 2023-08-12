import 'dart:io';

void main(){

// print("Enter Username");
// String? username = stdin.readLineSync();
// print("Enter Password");
// String? password = stdin.readLineSync();

// if(username == "salman" && password == "123"){


//   print("Login In Succesfully");
// }

// else{
//   print("Invalid Username and password");
// }




//   var choice;
//   var isSignedUp = false;
//   var username, password;

//    do {
//     print("Welcome ");
//     print("1. Create an account");
//     print("2. Login");
//     print("3. Exit");
//     print("Enter your choice: ");
//     choice = stdin.readLineSync();

//     switch (choice) {
//       case '1':
//         print("Enter a username: ");
//         username = stdin.readLineSync();
//         stdout.write("Enter a password: ");
//         password = stdin.readLineSync();
//         isSignedUp = true;
//         print("Account created successfully!");
//         break;

//       case '2':
//         if (isSignedUp) {
//           print("Enter your username: ");
//           var inputUsername = stdin.readLineSync();
//           print("Enter your password: ");
//           var inputPassword = stdin.readLineSync();

//           if (username == inputUsername && password == inputPassword) {
//             print("Login successful!");
//           } else {
//             print("Invalid Login failed.");
//           }
//         }
//         break;

//       case '3':
//         print("Thank You!");
//         break;

//       default:
//         print("Invalid choice. Please try again.");
//         break;
//     }


//   } while (choice != '3');
// }


  // String Username = "salman";
  // String Password = "123";


  // print("Enter your username:");
  // String enteredUsername = stdin.readLineSync()!;

  // print("Enter your password:");
  // String enteredPassword = stdin.readLineSync()!;

  // if (Username == enteredUsername && Password == enteredPassword){
  //   print("Already Exists ");
  // }
  // else{
  //   print("Created");
  // }




  // List<String> usernames = ['user1', 'user2', 'user3'];
  // List<String> passwords = ['pass1', 'pass2', 'pass3'];


  // bool isUsernameTaken(String username) {
  //   return usernames.contains(username);
  // }

  // bool isPasswordTaken(String password) {
  //   return passwords.contains(password);
  // }


  // if (isUsernameTaken(inputUsername)) {
  //   print('Username already taken.');
  // } else {
  //   print('Username is available.');
  // }


  // if (isPasswordTaken(inputPassword)) {
  //   print('Password already taken.');
  // } else {
  //   print('Password is available.');
  // }

 
  // List<String> registeredUsernames = ['abc', 'def', 'xyz'];
  // List<String> registeredPasswords = ['123', '456', '789'];


// Sample database of registered users
  Map<String, String> registeredUsers = {
    'abc': '123',
    'def': '456',
    'xyz': '789',
  };

  bool isLogin(String username, String password) {
    var abc = registeredUsers.containsKey(username) && registeredUsers[username] == password;
    print("ABC KI VALUE $abc");
    return registeredUsers.containsKey(username) &&
        registeredUsers[username] == password;
  }


  void loginOrSignUp() {
    print("********** WELCOME TO PIZZA SHOP, PLEASE LOGIN FIRST **********");
    print('  Enter your username:  ');
    String username = stdin.readLineSync()!;
    print("-----------");
    print('Enter your password:');
    String password = stdin.readLineSync()!;

    if (isLogin(username, password)) {
      print('Login successful. Welcome, $username!');

      print("----------------Pizza Menu----------------");
      print("  Flavors        Large    Med    Small");
      print("1: Chicken Tikka |500     400      300");      
      print("2: Peperoni      |500     400      300");
      print("3: Chicken Malai |500     400      300");
      print("4: Fajita        |500     400      300");
      print("5: Bihari Boti   |500     400      300");

      int flavorChoice = int.parse(stdin.readLineSync()!);

      print("1. Small  300");
      print("2. Medium 400");
      print("3. Large  500"); 

      print("Which Size You Want..??");
      int sizeChoice = int.parse(stdin.readLineSync()!);

      print("How Much Quantity....?? ");
      int quantity = int.parse(stdin.readLineSync()!);

      int small_price = 300;
      int med_price = 400;
      int large_price = 500;
      int result_price = 0;

      if(sizeChoice == 3){
      int result_price = quantity * large_price;
      print("Total Bill: $result_price");
    }

    if(sizeChoice == 2 ){
      int result_price = quantity * med_price;
      print("Total Bill $result_price"); 
    }
    
    if(sizeChoice == 1 ){
      int result_price = quantity * small_price;
      print("Total Bill $result_price"); 
    }


    while(true){

      print("You Want More? (yes/no)");
      String more = stdin.readLineSync()!;

      if (more == "yes"){
        print("YES BODY");
        print("----------------Pizza Menu----------------");
      print("  Flavors        Large    Med    Small");
      print("1: Chicken Tikka |500     400      300");      
      print("2: Peperoni      |500     400      300");
      print("3: Chicken Malai |500     400      300");
      print("4: Fajita        |500     400      300");
      print("5: Bihari Boti   |500     400      300");

      int flavorChoice = int.parse(stdin.readLineSync()!);

      print("1. Small  300");
      print("2. Medium 400");
      print("3. Large  500"); 

      print("Which Size You Want..??");
      int sizeChoice = int.parse(stdin.readLineSync()!);

      print("How Much Quantity....?? ");
      int quantity = int.parse(stdin.readLineSync()!);

      int small_price = 300;
      int med_price = 400;
      int large_price = 500;

      if(sizeChoice == 3){
      result_price += quantity * large_price;
      print("Total Bill: $result_price");
    }
    
    if(sizeChoice == 1 ){
      result_price += quantity * small_price;
      print("Total Bill $result_price"); 
    }

    if(sizeChoice == 2 ){
      result_price += quantity * med_price;
      print("Total Bill $result_price"); 
    }
 
      }
      else if (more == "no"){
        print("NO BODY");
        break;

      }
      else{
        print("YES OR NOL.");
      }
    // var tresult = ;

  

    // if(tresult == med_price + med_price || tresult == large_price + large_price || tresult == small_price + small_price){
    //   print(tresult);
    // }
    // else {
    //   print("Payement Mistake");
    // }
    }


    } else {
      print("**************");
      print('User not found. Do you want to sign up? (yes/no)');
      String signUpChoice = stdin.readLineSync()!.toLowerCase();

      if (signUpChoice == 'yes') {
        // loginOrSignUp();
        registeredUsers[username] = password;
        
        print('Sign up successful. Welcome, $username!');
        print(registeredUsers);
        
        print("Do you want to login (yes/no)");
        String login = stdin.readLineSync()!.toLowerCase();

      if(login == 'yes'){
        print('Enter your username:');
    String username = stdin.readLineSync()!;

    print('Enter your password:');
    String password = stdin.readLineSync()!;

    print('Login successful. Welcome, $username!');
      }

        
      } else {
        print('Login failed. Exiting...');
      }
    }
  }

  
  loginOrSignUp();

// print('WANT MORE ???');
// String onemore = stdin.readLineSync()!;
// while (onemore != 'no'){
//   print("IN WHILE LOOP");
//       print("----------------Pizza Menu----------------");
//       print("  Flavors        Large    Med    Small");
//       print("1: Chicken Tikka |500     400      300");      
//       print("2: Peperoni      |500     400      300");
//       print("3: Chicken Malai |500     400      300");
//       print("4: Fajita        |500     400      300");
//       print("5: Bihari Boti   |500     400      300");

//       int flavorChoice = int.parse(stdin.readLineSync()!);

//       print("1. Small  300");
//       print("2. Medium 400");
//       print("3. Large  500"); 

//       print("Which Size You Want..??");
//       int sizeChoice = int.parse(stdin.readLineSync()!);

//       print("How Much Quantity....?? ");
//       int quantity = int.parse(stdin.readLineSync()!);

//       int small_price = 300;
//       int med_price = 400;
//       int large_price = 500;

//       if(sizeChoice == 3){
//       int result = quantity * large_price;
//       print("Total Bill: $result");
//     }
    
//     if(sizeChoice == 1 ){
//       int resultsm = quantity * small_price;
//       print("Total Bill $resultsm"); 
//     }

//     if(sizeChoice == 2 ){
//       int resultmd = quantity * med_price;
//       print("Total Bill $resultmd"); 
//     }
    

//     print("You Want More? (yes/no)");
//     String onemore = stdin.readLineSync()!;



//     }



}