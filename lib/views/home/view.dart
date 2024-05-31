// All Flutter Built-in Imports Here.
import 'package:flutter/material.dart';

// All Custom Imports Here.
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// All Native Imports Here.
import 'package:cooperai/constants/assets.dart';
import 'package:cooperai/constants/colors.dart';
import 'package:cooperai/constants/texts.dart';

// All Attributes or Constants Here.

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppbarButton(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/srk.jpg'),
            ),
          )
        ],
      ),
      body: const HomeBodyWidget(),
    );
  }
}

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerTextSection(),
            headerBoxesSection(),
            recentSearchSection()
          ],
        ),
      ),
    );
  }

  Widget headerTextSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: AppText(text: 'Hello James', textSize: 35, bold: true),
        ),
        AppText(
          text: 'Make your day easy with us',
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget headerBoxesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
                child: Stack(
              children: [
                HomeHeaderBox(
                  title: 'Talk with cooper',
                  description: "Let's try it now",
                  icon: Icons.mic,
                  bgColor: AppColors.purpleDark,
                  iconBgOpacity: 0.6,
                  titleTextSize: 20,
                ),
                Positioned(
                  right: -52,
                  top: -117,
                  child: Opacity(
                    opacity: 0.2,
                    child: SizedBox(
                      height: 300,
                      child: AppAssets.logoWhiteBig,
                    ),
                  ),
                )
              ],
            )),
            const SizedBox(width: 10),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 7),
                      child: HomeHeaderBox(
                        title: 'New chat',
                        icon: Icons.chat_outlined,
                        bgColor: AppColors.yellow,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 15),
                        decoration: BoxDecoration(
                            color: AppColors.red,
                            borderRadius: BorderRadius.circular(25)),
                        child: const Text(
                          'New',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const HomeHeaderBox(
                  title: 'Search by image',
                  icon: Icons.document_scanner_outlined,
                  bgColor: Colors.black,
                  isDarkBgColor: true,
                  iconBgOpacity: 0.2,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget recentSearchSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: 'Recent Search',
                bold: true,
                textSize: 17,
              ),
              AppText(text: 'See All', color: Colors.grey)
            ],
          ),
          SizedBox(height: 20),
          SearchQuestionWidget(
              questionType: QuestionType.talk,
              question: 'What is a wild animal?'),
          SearchQuestionWidget(
              questionType: QuestionType.search, question: 'Scanning images'),
          SearchQuestionWidget(
              questionType: QuestionType.chat,
              question: 'Analysis my dribble shot'),
          SearchQuestionWidget(
              questionType: QuestionType.talk,
              question: 'How show the prototype figma?'),
        ],
      ),
    );
  }
}

class AppbarButton extends StatelessWidget {
  const AppbarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: AppColors.purpleLight,
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(child: AppAssets.logoWhite),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: AppText(text: 'Cooper 1.7'),
          ),
          const FaIcon(
            Icons.keyboard_arrow_down_rounded,
            size: 35,
            color: Colors.black54,
          )
        ],
      ),
    );
  }
}

class HomeHeaderBox extends StatelessWidget {
  final String title;
  final double titleTextSize;
  final Color bgColor;
  final bool isDarkBgColor;
  final String? description;
  final IconData icon;
  final double iconBgOpacity;

  const HomeHeaderBox(
      {super.key,
      required this.title,
      required this.bgColor,
      required this.icon,
      this.titleTextSize = 17,
      this.description,
      this.iconBgOpacity = 0.3,
      this.isDarkBgColor = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(iconBgOpacity),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
                child: Icon(icon,
                    color: isDarkBgColor == true ? Colors.white : Colors.black,
                    size: 20)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                  text: title,
                  textSize: titleTextSize,
                  bold: isDarkBgColor == true ? false : true,
                  color: isDarkBgColor == true ? Colors.white : Colors.black),
              if (description != null)
                AppText(
                    text: description!,
                    color:
                        isDarkBgColor == true ? Colors.white24 : Colors.black54)
            ],
          ),
        ],
      ),
    );
  }
}

class SearchQuestionWidget extends StatelessWidget {
  final QuestionType questionType;
  final String question;

  const SearchQuestionWidget(
      {super.key, required this.questionType, required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40), color: AppColors.lightGrey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [getIconWithColor(), AppText(text: question)],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.more_horiz_rounded),
          ),
        ],
      ),
    );
  }

  Icon getIcon() {
    if (questionType == QuestionType.talk) {
      return const Icon(Icons.mic);
    } else if (questionType == QuestionType.chat) {
      return const Icon(Icons.chat_outlined);
    }
    return const Icon(
      Icons.document_scanner_outlined,
      color: Colors.white,
    );
  }

  Widget getIconWithColor() {
    return Container(
      margin: const EdgeInsets.only(left: 3, right: 12),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: getColor(),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(child: getIcon()),
    );
  }

  Color getColor() {
    if (questionType == QuestionType.talk) {
      return AppColors.purpleDark;
    } else if (questionType == QuestionType.chat) {
      return AppColors.yellow;
    }
    return Colors.black;
  }
}

enum QuestionType { chat, talk, search }
