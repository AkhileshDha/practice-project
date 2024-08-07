import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imagesList=[
  {"id": 1,"image_path":"images/mirchi.png",},
  {"id": 1,"image_path":"images/vege.png",},
  {"id": 1,"image_path":"images/img.png",},
  ];
  final CarouselController carouselController=CarouselController();
  int indexcount=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: (){
                    print(indexcount);
                  },
                  child: CarouselSlider(
                    items: imagesList.map((item) => ClipRRect(
                      borderRadius: BorderRadius.circular(9.0),
                      child: Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    )).toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 3,
                      viewportFraction: 1,
                      onPageChanged: (index, reason){
                        setState(() {
                          indexcount=index;
                        });
                      }
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 210.0,
                    right: 210.0,
                    child:Row(
                      children: imagesList.asMap().entries.map((entry) {
                        print(entry);
                        print(entry.key);
                        return GestureDetector(
                          onTap: ()=>carouselController.animateToPage(entry.key),
                          child: Container(
                            width: indexcount ==entry.key ? 7 : 7,
                            height: 7.0,
                            margin: EdgeInsets.symmetric(horizontal: 3.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: indexcount == entry.key?Colors.red:Colors.blueAccent,
                            ),
                          ),
                        );
                      }).toList(),
                    ))
              ],
            )

          ],
        ),
    );
  }
}
