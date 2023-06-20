
import 'package:flutter/widgets.dart';
import 'package:test_project/SecondScreen.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/introduction_animation/introduction_animation.png',
     // navigateScreen: IntroductionAnimationScreen(),
      navigateScreen: SecondScreen(),
    ),
    HomeList(
      imagePath: 'assets/hotel/hotel_booking.png',
      navigateScreen: SecondScreen(),
    //  navigateScreen: HotelHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/fitness_app/fitness_app.png',
      navigateScreen: SecondScreen(),
    //  navigateScreen: FitnessAppHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/design_course/design_course.png',
      navigateScreen: SecondScreen(),
   //   navigateScreen: DesignCourseHomeScreen(),
    ),
  ];
}
