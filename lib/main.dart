// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static ThemeMode themeMode = ThemeMode.system;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeR.lightTheme,
      darkTheme: ThemeR.darkTheme,
      themeMode: themeMode,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const SplashScreen(),
    );
  }
}

/*   TFadeInAnimation(
            durationInMS: 1600,
            animate: TAnimatePosition(
                topAfter: 0, topBefore: -30, leftAfter: 0, leftBefore: -30),
            child: Image(
              image: AssetImage(tSplashTopIcon),
            ),
          ),
          TFadeInAnimation(
            durationInMS: 2400,
            animate: TAnimatePosition(
                topAfter: 80,
                topBefore: 80,
                leftAfter: tDefaultSize,
                leftBefore: -80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  tAppTagLine,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          TFadeInAnimation(
            durationInMS: 2400,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100),
            child: Image(
              image: AssetImage(tSplashImage),
              height: 100,
            ),
          ),
          TFadeInAnimation(
            durationInMS: 2400,
            animate: TAnimatePosition(
                rightAfter: tDefaultSize,
                rightBefore: tDefaultSize,
                bottomBefore: 0,
                bottomAfter: 60),
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                  color: tPrimaryColor,
                  borderRadius: BorderRadius.circular(100)),
            ),
          )
         */

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text('Heading', style: Theme.of(context).textTheme.displayMedium),
            Text('Sub-heading', style: Theme.of(context).textTheme.titleMedium),
            Text('Paragraph', style: Theme.of(context).textTheme.titleSmall),
            ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button',
                    style: TextStyle(fontSize: 20))),
            OutlinedButton(
                onPressed: () {},
                child: const Text('Outlined Button',
                    style: TextStyle(fontSize: 20)))
          ],
        ),
      ),
    );
  }
}
