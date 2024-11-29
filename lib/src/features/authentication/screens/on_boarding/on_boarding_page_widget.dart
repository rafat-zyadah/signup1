// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../../../../constants/siszes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(model.image, height: size.height * 0.5),
          Column(
            children: [
              Text(model.title,
                  style: Theme.of(context).textTheme.displayMedium),
              Text(model.subTitle, textAlign: TextAlign.center),
            ],
          ),
          Text(model.counterText,
              style: Theme.of(context).textTheme.titleLarge),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
