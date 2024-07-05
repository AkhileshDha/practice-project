import 'package:flutter/material.dart';
import 'package:framer_app_font_page/widgets/my_coloum.dart';
import 'package:framer_app_font_page/widgets/my_slide.dart';
class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                MySlider(
                    wtr: 350,
                    htr: 200),
                const SizedBox(
                  width: 10,
                ),
                MySlider(
                    wtr: 350,
                    htr: 200,
                ),
                const SizedBox(
                  width: 10,
                ),
                MySlider(
                    wtr: 350,
                    htr: 200),
              ],
            ),
          ),
          const Row(
            children: [
              Text("Your Favorite Cooking Essentails",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15.0
              ),),
              SizedBox(
                width: 100.0,
              ),
              Text("View All",
              style: TextStyle(
                color: Colors.redAccent
              ),)
            ],
          ),
         const SizedBox(
            height: 10.0,
          ),
          MyColoum(
            htr: 44.0,
            wtr: 7.0,
          )

        ],
      ),
    );
  }
}
