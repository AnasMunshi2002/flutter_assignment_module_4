import 'package:flutter/material.dart';
import 'package:flutter_assignment_module_4/question_61.dart';
import 'package:flutter_assignment_module_4/question_62.dart';
import 'package:flutter_assignment_module_4/question_63.dart';
import 'package:flutter_assignment_module_4/question_64.dart';
import 'package:flutter_assignment_module_4/question_65.dart';
import 'package:flutter_assignment_module_4/question_66.dart';
import 'package:flutter_assignment_module_4/question_67.dart';
import 'package:flutter_assignment_module_4/question_68.dart';
import 'package:flutter_assignment_module_4/question_69.dart';
import 'package:flutter_assignment_module_4/question_70.dart';
import 'package:flutter_assignment_module_4/question_71.dart';
import 'package:flutter_assignment_module_4/question_72.dart';
import 'package:flutter_assignment_module_4/question_73.dart';
import 'package:flutter_assignment_module_4/question_74.dart';
import 'package:flutter_assignment_module_4/question_75.dart';
import 'package:flutter_assignment_module_4/question_76.dart';
import 'package:flutter_assignment_module_4/question_77.dart';
import 'package:flutter_assignment_module_4/question_78.dart';

void main() => runApp(MyApp());

class Questions {
  String question;
  Questions({required this.question});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    List<Questions> questionList = [];
    List classes = [
      ToolbarDesign(),
      SimpleAlertDialog(),
      DialogToast(),
      CityDialog(),
      DialogExit(),
      SelectDate(),
      OptionMenu(),
      EditViewDelOption(),
      GmailAppSplash(),
      BottomNav(),
      GalleryBottomNav(),
      PhoneAppDialog(),
      SplashUI(),
      ActivityRedirect(),
      ActivityLifeCycle(),
      SumActivity(),
      CallURL(),
      UserListCRUD(),
    ];
    questionList.add(Questions(
        question:
            'Question 61. Create custom toolbar as per given below design Create toolbar with spinner and search functionality.'));
    questionList.add(Questions(
        question:
            'Question 62. Write a code to display simple alert dialog with title, description and icon when button is clicked.'));
    questionList.add(Questions(
        question:
            'Question 63. Write a code to display alert dialog with positive, negative and neutral button and display toast respectively user\'s choice.'));
    questionList.add(Questions(
        question:
            'Question 64. Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView.'));
    questionList.add(Questions(
        question:
            'Question 65. open alert dialog when user want to exit from the application.'));
    questionList.add(Questions(
        question:
            'Question 66. Write a code to select Date on button\'s click event.'));
    questionList.add(Questions(
        question:
            'Question 67. Write a code to display profile and logout option in options menu.'));
    questionList.add(Questions(
        question:
            'Question 68. Write a code to display edit, view, delete options with context menu in listview and also perform respective operation on user\'s choice.'));
    questionList.add(Questions(
        question:
            'Question 69. Create an application like gmail and display Screens according to user selection and design each page with dummy data.'));
    questionList.add(Questions(
        question:
            'Question 70. Create an application with bottom navigation with 3 tabs Gallery, audio and video and design each page with dummy data.'));
    questionList.add(Questions(
        question:
            'Question 71. Create an application with Navigation Drawer with 3 tabs Gallery, audio and video and design each page with dummy data.'));
    questionList.add(Questions(
        question:
            'Question 72. create a Phone call App when user first time open the app it will automatically generate one dialog which has two option allow, deny if click on allow permission is grant in settings.'));
    questionList.add(Questions(
        question:
            'Question 73. Write a code to display Splash Screen using Activity.'));
    questionList.add(Questions(
        question:
            'Question 74. Write a code to redirect user from one activity to another when button click..'));
    questionList.add(Questions(
        question:
            'Question 75. Create an Android Application which Manage Activity Lifecycle Stages and Showing Toast with Performing Different Stages..'));
    questionList.add(Questions(
        question:
            'Question 76. Create an Application to take input two numbers from users and when user press button then display sum of those values of next Activity..'));
    questionList.add(Questions(
        question:
            'Question 77. Call via urllauncher, Send Sms via urllauncher.'));
    questionList.add(Questions(
        question:
            'Question 78. Write a program to add name from the text view and insert into the listview. If you click on the listview then name should be show in the dialog box. When user press for 2 seconds on particular List item then open Context Menu (Delete Item, Edit Item, Exit). If user click on Delete Item then Open one Alert Dialog with message (“Are you sure want to delete Item?”) and yes, no button if user press yes button then remove item from list. (Click a DELETE button, it gives a confirm box) If user click on Edit item then selected item display on EditText and again user click on button then this (updated item) should be replace with old item.'));
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade300,
      appBar: AppBar(
        title: Text('Question List Mod 4'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: questionList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => classes[index],
                    )),
                leading: Icon(Icons.question_answer),
                title: Text(
                  questionList[index].question,
                  textAlign: TextAlign.justify,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
