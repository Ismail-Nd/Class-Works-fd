// Sure! Here’s how we can approach the tasks in the assignment:

// Task 1: Quiz Application Using Object-Oriented Programming (OOP) in Dart

// Key Requirements:
// 	1.	Classes to create:
// 	•	Quiz: Contains quiz-related data like title and questions.
// 	•	Question: Represents a single question with possible answers and the correct one.
// 	•	User: Represents the user taking the quiz.
// 	2.	Features:
// 	•	A console-based user interface for interacting with the quiz.
// 	•	Quiz creation and management.
// 	•	Multiple-choice questions.
// 	•	Score tracking.

// Sample Code Structure:

import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctOption;

  Question(this.questionText, this.options, this.correctOption);

  bool checkAnswer(int userAnswer) {
    return userAnswer == correctOption;
  }
}

class Quiz {
  String title;
  List<Question> questions = [];

  Quiz(this.title);
  
  void addQuestion(Question question) {
    questions.add(question);
  }

  void startQuiz() {
    int score = 0;
    print('--- $title ---');
    for (var i = 0; i < questions.length; i++) {
      print('${i + 1}. ${questions[i].questionText}');
      for (var j = 0; j < questions[i].options.length; j++) {
        print('${j + 1}. ${questions[i].options[j]}');
      }
      stdout.write('Enter your answer: ');
      int userAnswer = int.parse(stdin.readLineSync()!);
      if (questions[i].checkAnswer(userAnswer - 1)) {
        print('Correct!');
        score++;
      } else {
        print('Wrong!');
      }
    }
    print('Your score: $score/${questions.length}');
  }
}

class User {
  String name;

  User(this.name);
}

void main() {
  var quiz = Quiz('Dart Basics');
  quiz.addQuestion(Question(
      'What is Dart?',
      ['A programming language', 'A game', 'A web browser', 'None of the above'],
      0));
  quiz.addQuestion(Question(
      'Which company developed Dart?',
      ['Google', 'Microsoft', 'Facebook', 'Apple'],
      0));

  quiz.startQuiz();
}



