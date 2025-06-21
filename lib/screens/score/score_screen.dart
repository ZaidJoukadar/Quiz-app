import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              const Spacer(flex: 3),
              const Text("Score",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
              const Spacer(),
              Text(
                  "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18)),
              const Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
