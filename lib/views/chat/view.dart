// All Flutter Built-in Imports Here.
import 'package:cooperai/constants/colors.dart';
import 'package:cooperai/constants/texts.dart';
import 'package:cooperai/views/home/view.dart';
import 'package:flutter/material.dart';

// All Custom Imports Here.

// All Native Imports Here.

// All Attributes or Constants Here.

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundColor: AppColors.lightGrey,
              child: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
            ),
          ),
          title: const AppbarButton(),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: AppColors.lightGrey,
                child: const Icon(Icons.more_horiz_rounded, size: 30),
              ),
            ),
          ],
        ),
      ),
      body: const ChatBodyWidget(),
    );
  }

  Size get preferredSize => const Size.fromHeight(80);
}

class ChatBodyWidget extends StatelessWidget {
  const ChatBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: const Column(
        children: [
          DayWidget(day: 'Today'),
          ChatQuestionWidget(
              question:
                  'Provide statistics on the development of the indonasian population'),
          ChatAnswerWidget(
            answer: AppText(
                text:
                    "Well, here is the latest statistical data on the indonasia's population"),
            extraWidget: ChatAnswerStatisticWidget(),
            timeTag: 'Just now',
          )
        ],
      ),
    );
  }
}

class DayWidget extends StatelessWidget {
  final String day;

  const DayWidget({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: AppText(text: day, bold: true),
    );
  }
}

class ChatQuestionWidget extends StatelessWidget {
  final String question;

  const ChatQuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 30,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/srk.jpg'),
                ),
              ),
              const AppText(text: 'Me')
            ],
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              constraints: const BoxConstraints(maxWidth: 220),
              decoration: BoxDecoration(
                  color: AppColors.purpleDark,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
              child: AppText(text: question)),
          const AppText(text: '1 mins ago')
        ],
      ),
    );
  }
}

class ChatAnswerWidget extends StatelessWidget {
  final Widget answer;
  final String? timeTag;
  final Widget? extraWidget;

  const ChatAnswerWidget(
      {super.key, required this.answer, this.timeTag, this.extraWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 8),
                height: 30,
                child: const CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('assets/images/logo_white.png'),
                ),
              ),
              const AppText(text: 'Cooper')
            ],
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              constraints: const BoxConstraints(maxWidth: 280),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
              child: answer),
          if (extraWidget != null) extraWidget!,
          if (timeTag != null) AppText(text: timeTag!)
        ],
      ),
    );
  }
}

class ChatAnswerStatisticWidget extends StatelessWidget {
  const ChatAnswerStatisticWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(20),
      constraints: const BoxConstraints(maxWidth: 280),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const AppText(text: '2022', textSize: 17),
          const AppText(text: '275.5 million', textSize: 22, bold: true),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(child: statisticBar(80, AppColors.yellow)),
              Flexible(child: statisticBar(100, AppColors.purpleDark)),
              Flexible(child: statisticBar(120, AppColors.yellow)),
              Flexible(child: statisticBar(140, AppColors.purpleDark)),
            ],
          )
        ],
      ),
    );
  }

  Widget statisticBar(double height, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: height,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), color: color),
    );
  }
}

class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
    );
  }
}
