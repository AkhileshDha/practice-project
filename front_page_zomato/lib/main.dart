import 'package:flutter/material.dart';
import 'package:front_page_zomato/widgets/mycontainer.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("zomato"
              ,style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),),
            actions:[
              const MyContainer(
                wtr:70.0 ,
                htr: 30.0,
                clr: Colors.redAccent,
                horizontalpadd: 15.0,
                verticalpadd: 7.0,
                rdis: 20.0,
                chld:Text("Use App",style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),),
              ),
              const  SizedBox(
                  width: 10.0),
              Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.black12,
                    width: 1
                  )
                ),
                child:const Icon(Icons.person,color: Colors.red,),
              ),
              const SizedBox(
                width: 10.0,
              )
            ],
          ),
          body:SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on,color: Colors.red,),
                    const  Text("Bhopal"),
                    const SizedBox(
                      width: 285.0,
                    ),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: Colors.black26
                        )
                      ),
                      child:const Icon(Icons.search),
                    )
                  ],
                ),
                Container(
                  height: 2.0, width: double.maxFinite,color: Colors.grey,),
                const SizedBox(
                  height: 5.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 30.0,
                        padding:const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          border: Border.all(
                            color: Colors.black26,
                            width: 1.0
                          )
                        ),
                        child:const Row(
                          children: [
                            Icon(Icons.filter_alt_outlined),
                            Text("Filters"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0,vertical: 5.0),
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            border: Border.all(
                                color: Colors.black26,
                                width: 1.0
                            )
                        ),
                        child: const Text("Offers"),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0,vertical: 5.0),
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            border: Border.all(
                                color: Colors.black26,
                                width: 1.0
                            )
                        ),
                        child:const Text("Rating:4.0+"),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            border: Border.all(
                                color: Colors.black26,
                                width: 1.0
                            )
                        ),
                        child:const Text("Pet Friendly"),
                      ),
                      const  SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding:const EdgeInsets.symmetric(horizontal: 7.0,vertical: 5.0),
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            border: Border.all(
                                color: Colors.black26,
                                width: 1.0
                            )
                        ),
                        child: const Text("Outdoor Seating"),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding:const EdgeInsets.symmetric(horizontal: 7.0,vertical: 5.0),
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            border: Border.all(
                                color: Colors.black26,
                                width: 1.0
                            )
                        ),
                        child: const Text("Serves Alcohol"),
                      ),
                     const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0,vertical: 5.0),
                        height: 30.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.0),
                            border: Border.all(
                                color: Colors.black26,
                                width: 1.0
                            )
                        ),
                        child: const Text("Open Now"),
                      ),
                    ],
                  ),
                ),
               const SizedBox(
                  height: 10.0,
                ),
                const Row(
                  children: [
                    Text("Collections",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),),
                    SizedBox(
                      width: 180.0,
                    ),
                    Text("All Collections in indore",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.red
                    ),),
                    Icon(Icons.arrow_right,color: Colors.red,)
                  ],
                ),
               const SizedBox(
                  height: 40.0,
                  width: double.maxFinite,
                  child: Text("Explore curated lists of top resturants, cafes,pubs, and bars in bhopal, based on trends"),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration:const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/1.jpg"),
                            fit: BoxFit.cover
                          )
                        ),
                        child:const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("12 Best Luxury Dining Pla.....",
                            style: TextStyle(
                              color: Colors.white
                            ),),
                            Row(
                              children: [
                                Text("13 Places",style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white
                                ),),
                                Icon(Icons.arrow_right,color:Colors.white,),
                              ],
                            )
                          ],
                        ) ,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration:const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/2.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                        child:const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("11 Romantic Dining Places",
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                            Row(
                              children: [
                                Text("11 Places",style: TextStyle(
                                    fontSize: 12.0,
                                  color: Colors.white,
                                ),),
                                Icon(Icons.arrow_right,color: Colors.white,),
                              ],
                            )
                          ],
                        ) ,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration:const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/3.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                        child:const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("17 Great Cafes",
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                            Row(
                              children: [
                                Text("16 Places",style: TextStyle(
                                    fontSize: 12.0,
                                  color: Colors.white
                                ),),
                                Icon(Icons.arrow_right,color: Colors.white,),
                              ],
                            )
                          ],
                        ) ,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration:const  BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/4.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                        child:const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("12 Local Favourite Places",
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                            Row(
                              children: [
                                Text("13 Places",style: TextStyle(
                                    fontSize: 12.0,
                                  color: Colors.white
                                ),),
                                Icon(Icons.arrow_right, color: Colors.white,),
                              ],
                            )
                          ],
                        ) ,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/5.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                        child:const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("9 Serene Rooftop Places",
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                            Row(
                              children: [
                                Text("7 Places",style: TextStyle(
                                    fontSize: 12.0,
                                  color:Colors.white
                                ),),
                                Icon(Icons.arrow_right,color: Colors.white,),
                              ],
                            )
                          ],
                        ) ,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration:const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/6.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("18 Best Bars & Pubs",
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                            Row(
                              children: [
                                Text("15 Places",style: TextStyle(
                                    fontSize: 12.0,
                                  color: Colors.white
                                ),),
                                Icon(Icons.arrow_right,color: Colors.white,),
                              ],
                            )
                          ],
                        ) ,
                      ),
                      const  SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/7.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                        child:const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("12 Best Luxury Dining Pla.....",
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                            Row(
                              children: [
                                Text("13 Places",style: TextStyle(
                                    fontSize: 12.0,
                                  color: Colors.white
                                ),),
                                Icon(Icons.arrow_right,color: Colors.white,),
                              ],
                            )
                          ],
                        ) ,
                      ),
                      const  SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 150.0,
                        width: 200.0,
                        decoration:const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("images/8.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Best Of Live Screenings",
                              style: TextStyle(
                                  color: Colors.white
                              ),),
                            Row(
                              children: [
                                Text("22 Places",style: TextStyle(
                                    fontSize: 12.0,
                                  color: Colors.white
                                ),),
                                Icon(Icons.arrow_right,color: Colors.white,),
                              ],
                            )
                          ],
                        ) ,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(7.0),
                  height: 90.0,
                  width: double.maxFinite,
                  child: const Text("Treading dining out restaurants in bhopal",style: TextStyle(
                    fontWeight:FontWeight.w700,
                    wordSpacing: 5.0,
                    fontSize: 20.0
                  ),),
                ),
                Column(
                    children: [
                      Container(
                        height: 230.0,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          border: Border.all(
                            color: Colors.black26,
                            width: 1
                          )
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.0),
                                image:const DecorationImage(
                                  image: AssetImage("images/1.jpg"),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ) ,
                            Row(
                              children: [
                                const Text("House of Delici"),
                                const SizedBox(
                                  width: 250.0,
                                ),
                                Container(
                                  padding:const EdgeInsets.all(2.0),
                                  height: 15.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: Colors.green
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("3.2",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      Icon(Icons.star,color: Colors.white,size: 8.0,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                           const SizedBox(
                              height: 5.0,),
                            const Row(
                              children: [
                                Text("North Indian Chinese,fast Food....",
                                style: TextStyle(
                                  fontSize: 11.0
                                ),),
                                SizedBox(
                                  width: 150.0,
                                ),
                                Text("Rs 1600 For two",style: TextStyle(
                                  fontSize: 8.0
                                ),)
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,),
                            const Row(
                              children: [
                                Text("Airport Area,Bhopal",style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w200
                                ),),
                                SizedBox(
                                  width: 250.0,
                                ),
                               Text("5.5 km",
                               style: TextStyle(
                                 fontSize: 10.0,
                                 fontWeight: FontWeight.bold
                               ),)
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,),
                          ],
                        ),
                      ),
                      Container(
                        height: 230.0,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          border: Border.all(
                            color: Colors.black26,
                            width: 1
                          )
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.0),
                                image:const DecorationImage(
                                  image: AssetImage("images/1.jpg"),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ) ,
                            Row(
                              children: [
                                const Text("House of Delici"),
                                const SizedBox(
                                  width: 250.0,
                                ),
                                Container(
                                  padding:const EdgeInsets.all(2.0),
                                  height: 15.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: Colors.green
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("3.2",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      Icon(Icons.star,color: Colors.white,size: 8.0,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                           const SizedBox(
                              height: 5.0,),
                            const Row(
                              children: [
                                Text("North Indian Chinese,fast Food....",
                                style: TextStyle(
                                  fontSize: 11.0
                                ),),
                                SizedBox(
                                  width: 150.0,
                                ),
                                Text("Rs 1600 For two",style: TextStyle(
                                  fontSize: 8.0
                                ),)
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,),
                            const Row(
                              children: [
                                Text("Airport Area,Bhopal",style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w200
                                ),),
                                SizedBox(
                                  width: 250.0,
                                ),
                               Text("5.5 km",
                               style: TextStyle(
                                 fontSize: 10.0,
                                 fontWeight: FontWeight.bold
                               ),)
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,),
                          ],
                        ),
                      ),
                      Container(
                        height: 230.0,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          border: Border.all(
                            color: Colors.black26,
                            width: 1
                          )
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.0),
                                image:const DecorationImage(
                                  image: AssetImage("images/1.jpg"),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ) ,
                            Row(
                              children: [
                                const Text("House of Delici"),
                                const SizedBox(
                                  width: 250.0,
                                ),
                                Container(
                                  padding:const EdgeInsets.all(2.0),
                                  height: 15.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: Colors.green
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("3.2",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      Icon(Icons.star,color: Colors.white,size: 8.0,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                           const SizedBox(
                              height: 5.0,),
                            const Row(
                              children: [
                                Text("North Indian Chinese,fast Food....",
                                style: TextStyle(
                                  fontSize: 11.0
                                ),),
                                SizedBox(
                                  width: 150.0,
                                ),
                                Text("Rs 1600 For two",style: TextStyle(
                                  fontSize: 8.0
                                ),)
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,),
                            const Row(
                              children: [
                                Text("Airport Area,Bhopal",style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w200
                                ),),
                                SizedBox(
                                  width: 250.0,
                                ),
                               Text("5.5 km",
                               style: TextStyle(
                                 fontSize: 10.0,
                                 fontWeight: FontWeight.bold
                               ),)
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,),
                          ],
                        ),
                      ),
                      Container(
                        height: 230.0,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.0),
                          border: Border.all(
                            color: Colors.black26,
                            width: 1
                          )
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150.0,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.0),
                                image:const DecorationImage(
                                  image: AssetImage("images/1.jpg"),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ) ,
                            Row(
                              children: [
                                const Text("House of Delici"),
                                const SizedBox(
                                  width: 250.0,
                                ),
                                Container(
                                  padding:const EdgeInsets.all(2.0),
                                  height: 15.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.0),
                                    color: Colors.green
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("3.2",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      Icon(Icons.star,color: Colors.white,size: 8.0,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                           const SizedBox(
                              height: 5.0,),
                            const Row(
                              children: [
                                Text("North Indian Chinese,fast Food....",
                                style: TextStyle(
                                  fontSize: 11.0
                                ),),
                                SizedBox(
                                  width: 150.0,
                                ),
                                Text("Rs 1600 For two",style: TextStyle(
                                  fontSize: 8.0
                                ),)
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,),
                            const Row(
                              children: [
                                Text("Airport Area,Bhopal",style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w200
                                ),),
                                SizedBox(
                                  width: 250.0,
                                ),
                               Text("5.5 km",
                               style: TextStyle(
                                 fontSize: 10.0,
                                 fontWeight: FontWeight.bold
                               ),)
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,),
                          ],
                        ),
                      ),

                    ],
                  ),
              ],
            ),
          ),
        ),
        ),
    ) ;
  }
}
