import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen2 extends StatelessWidget {
  final image1;
  final text;
  final text1;
  const Screen2({super.key,required this.image1,required this.text,required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Card(
          elevation: 7,
          shadowColor: Colors.grey[600],
          child: Container(
            width: double.infinity,
            height: 150,
            child: Stack(
              children: [
                Container(
                  height: 150,
                  width: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image1),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 140,
                  top: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                       text1,
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$180 / night ",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.directions_car, color: Colors.blue),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.hot_tub,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.local_bar, color: Colors.blue),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.wifi, color: Colors.blue)
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 280,
                  top: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text(
                        "Book",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
