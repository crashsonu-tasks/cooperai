// All Flutter Built-in Imports Here.
import 'package:flutter/material.dart';

// All Custom Imports Here.

// All Native Imports Here.
import 'package:cooperai/views/widgets/wavy_design.dart';
import 'package:cooperai/constants/assets.dart';
import 'package:cooperai/constants/colors.dart';
import 'package:cooperai/constants/texts.dart';

// All Attributes or Constants Here.

class PlanView extends StatelessWidget {
  const PlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            body: const PlanBodyWidget(),
            bottomNavigationBar: Container(
              margin: const EdgeInsets.all(15),
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(backgroundColor: Colors.black),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: AppText(
                    text: 'Subscription',
                    color: Colors.white,
                    textSize: 17,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: -40,
              left: 0,
              right: 0,
              child: WavyContainer(height: 250, color: AppColors.purpleDark)),
          Positioned(
            top: 30,
            left: 20,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundColor: AppColors.lightGrey,
                  child: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlanBodyWidget extends StatelessWidget {
  const PlanBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 170),
            iconHeaderWidget(),
            const SizedBox(
              height: 30,
            ),
            PlanWidget(
                planTitle: 'Monthly Plan',
                planPrice: '\$8.99/per month',
                bgColor: AppColors.purpleDark,
                bgDarkColor: Colors.deepPurpleAccent),
            PlanWidget(
                planTitle: 'Yearly Plan',
                planPrice: '\$8.99/per month',
                bgColor: AppColors.yellow,
                bgDarkColor: Colors.yellowAccent),
            const SizedBox(height: 70)
          ],
        ),
      ),
    );
  }

  Widget iconHeaderWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(50)),
                child: AppAssets.logoBlack,
              ),
              Positioned(
                bottom: 0,
                left: 30,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  decoration: BoxDecoration(
                      color: AppColors.purpleDark,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Text(
                    'Pro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: AppText(
            text: 'Cooper+ plans',
            textSize: 25,
            bold: true,
          ),
        ),
        const AppText(
            text: 'Try unlimited features with cooper+',
            color: Colors.grey,
            bold: true),
      ],
    );
  }
}

class PlanWidget extends StatelessWidget {
  final String planTitle;
  final String planPrice;
  final Color bgColor;
  final Color bgDarkColor;

  const PlanWidget(
      {super.key,
      required this.planTitle,
      required this.planPrice,
      required this.bgColor,
      required this.bgDarkColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: bgColor),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: [bgDarkColor, Colors.black],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child:
                            AppText(text: planTitle, textSize: 15, bold: true),
                      ),
                      AppText(text: planPrice, color: Colors.black54),
                    ],
                  )
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(30)),
                child: const AppText(
                  text: 'Free ads',
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(color: Colors.black12),
          ),
          const Row(
            children: [
              ...[
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.black,
                      size: 20,
                    )),
                Flexible(child: AppText(text: 'Chat unlimited'))
              ],
              SizedBox(width: 10),
              ...[
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.black,
                      size: 20,
                    )),
                Flexible(child: AppText(text: 'Notify automatic'))
              ]
            ],
          )
        ],
      ),
    );
  }
}
