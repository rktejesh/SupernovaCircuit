import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MainPageUpcoming extends StatefulWidget {
  @override
  _MainPageUpcomingState createState() => _MainPageUpcomingState();
}

class _MainPageUpcomingState extends State<MainPageUpcoming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimationLimiter(
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: SlideAnimation(
                  verticalOffset: 50,
                  child: FadeInAnimation(
                    child: YourListChild(),
                    ),
                  ),
                ),
              );
          },
        ),
      ),
    );
  }
}

class YourListChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(149, 157, 165, 0.1),
              offset: Offset(0, 0),
              blurRadius: 24,
            )
          ]
      ),
    );
  }
}
