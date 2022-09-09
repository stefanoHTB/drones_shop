import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  ImageStack({Key? key}) : super(key: key);

  final List<String> images = [
    'assets/images/casa.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return
        //  Container(
        //   child:

        Stack(
            alignment: Alignment.center,
            ///////
            fit: StackFit.loose,
            children: [
          Center(
            child: Image(image: AssetImage(images[0])),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Positioned(
              //   left: 500,
              //   top: 200,
              //   child:
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                  )),
              // Container(
              //   child:
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 2,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'WELCOME TO',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'REAL ESTATE',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'PHOTOGRAPHY PRODUCTIONS',
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 2,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text(
                        'CONTACT US',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              //  ),

              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                  )),

              //  ),
            ],
          )
          //  ),
        ]
            // ),
            );
  }
}
