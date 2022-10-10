import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_hotel/homescreen2.dart';
import 'package:flutter_application_hotel/newui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello @rjun",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Find Your Favouriate Hotel  ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/tour.jpg'),
                                fit: BoxFit.cover),
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(12)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        hintText: 'Search For Hotel',
                        fillColor: Colors.grey[300],
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Popular Hotel  ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        NewScreen(
                            pic: 'assets/tour1.jpg',
                            text1: 'Crown Plazza',
                            text2: 'A Five Star Hotel in Kochi'),
                        NewScreen(
                            pic: 'assets/hotel.jpeg',
                            text1: 'Crown Plazza',
                            text2: 'A Five Star Hotel in Kochi'),
                        NewScreen(
                            pic: 'assets/hotel1.jpg',
                            text1: 'Crown Plazza',
                            text2: 'A Five Star Hotel in Kochi'),
                        NewScreen(
                            pic: 'assets/tour1.jpg',
                            text1: 'Crown Plazza',
                            text2: 'A Five Star Hotel in Kochi')
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hotel Packages  ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View all  ",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Screen2(
              image1: "assets/tour1.jpg",
              text: "Crown Plazza",
              text1: "A Five Star Hotel in Kochi",
            ),
            Screen2(
              image1: "assets/tour1.jpg",
              text: "Crown Plazza",
              text1: "A Five Star Hotel in Kochi",
            ),
            Screen2(
              image1: "assets/tour1.jpg",
              text: "Crown Plazza",
              text1: "A Five Star Hotel in Kochi",
            )
          ],
        ),
      ),
    );
  }
}
