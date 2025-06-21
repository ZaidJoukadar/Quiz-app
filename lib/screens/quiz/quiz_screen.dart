import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/controllers/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          // FlatButton(onPressed: _controller.nextQuestion, child:const Text("Skip")),
          MaterialButton(
            onPressed: _controller.nextQuestion,
            child: const Text("Skip"),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
