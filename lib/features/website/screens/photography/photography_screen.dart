import 'package:drone_website/features/website/screens/branded/widgets/bio_text.dart';
import 'package:drone_website/features/website/screens/branded/widgets/multiple_container.dart';
import 'package:drone_website/features/website/screens/footer/footer.dart';
import 'package:drone_website/features/website/screens/footer/widgets/carousel_slider.dart';
import 'package:drone_website/features/website/screens/real_state/widgets/realstate_cart.dart';
import 'package:drone_website/features/website/widgets/contact_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class PhotographyScreen extends StatefulWidget {
  const PhotographyScreen({Key? key}) : super(key: key);

  @override
  State<PhotographyScreen> createState() => _PhotographyScreenState();
}

class _PhotographyScreenState extends State<PhotographyScreen> {
  final List<String> images = [
    'assets/images/youtub(1).png',
    'assets/images/vegeta(2).png',
    'assets/images/isss(1).png',
  ];

  // final List<String> video = [
  //   'assets/images/video.mp4',
  // ];

  final List<String> video1 = [
    'assets/images/video2.mp4',
  ];

  late VideoPlayerController _controller;
  late VideoPlayerController _controllerone;

  late Future<void> _initializeVideoPlayerFuture;
  late Future<void> _initializeVideo1PlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/pitajaya-drones-studio.appspot.com/o/REEL%20PITAJAYA%20DRONES%202020.mp4?alt=media&token=9311928f-5cd7-40f5-b17a-c99adf5cdf45');
    // _controller = VideoPlayerController.asset(video[0]);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);

    ///
    _controllerone = VideoPlayerController.asset(video1[0]);
    _initializeVideo1PlayerFuture = _controllerone.initialize();
    _controllerone.setLooping(true);
    _controllerone.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(images[0]))),
              ),
            ),
            title: Text(
              '/ Pitajaya_Drones   ',
              style: GoogleFonts.abel(fontSize: 20),
            ),
            actions: [
              Row(
                children: [
                  Text(
                    '@pitajaya_drones /  ',
                    style: GoogleFonts.abel(fontSize: 20),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(images[2]))),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.shopping_cart,
                    size: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ]),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    });
                  },
                  child: Icon(_controller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow)),

              ////////////////////////////////////////////////////////////////////////////////////////////////////////
              BioText(
                text:
                    'Produce high-quality content with the state-of-the-art equipment with our high-tech drone team. Our talented production studio are always at the ready with a full inventory of professional-grade equipment. We are ready to help out develop, produce and have a massive impact in any type of industry ',
                color: Colors.grey.shade700,
              ),
              const SizedBox(
                height: 10,
              ),

              //////////////////////////////////////////////////////////////////////////////////////////////////////
              MultipleContainer(
                titlecolor: Colors.white,
                iconcolor: Colors.white,
                icon: Icons.video_collection,
                description:
                    'When creating branded content we believe it is integral to fully understand your target audience. This involves getting to know the demographics and psychographics of your audience which may include their lifestyle choices, social media preferences and attitudes towards ethical issues. ',
                title: 'PRODUCTIONS',
                color1: Colors.black,
                color2: Colors.black,
                color3: Colors.black,
                colordescription: Colors.grey.shade700,
              ),
              MultipleContainer(
                titlecolor: Colors.white,
                iconcolor: Colors.white,
                icon: Icons.video_collection,
                description:
                    'When creating branded content we believe it is integral to fully understand your target audience. This involves getting to know the demographics and psychographics of your audience which may include their lifestyle choices, social media preferences and attitudes towards ethical issues. ',
                title: 'PRODUCTIONS',
                color1: Colors.black,
                color2: Colors.black,
                color3: Colors.black,
                colordescription: Colors.grey.shade700,
              ),
              const SizedBox(
                height: 30,
              ),

              const CarouselSliderWidget(),
              Container(
                height: 50,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),

              // const CarouselSliderWidget(),
              // Container(
              //   height: 50,
              //   color: Colors.black,
              // ),
              // const CarouselSliderWidget(),
              // Container(
              //   height: 50,
              //   color: Colors.black,
              // ),

              // MultipleContainer(
              //   titlecolor: Colors.white,
              //   iconcolor: Colors.white,
              //   icon: Icons.video_collection,
              //   description:
              //       'When creating branded content we believe it is integral to fully understand your target audience. This involves getting to know the demographics and psychographics of your audience which may include their lifestyle choices, social media preferences and attitudes towards ethical issues. ',
              //   title: 'PRODUCTIONS',
              //   color1: Colors.black,
              //   color2: Colors.black,
              //   color3: Colors.black,
              //   colordescription: Colors.grey.shade700,
              // ),
              const SizedBox(
                height: 30,
              ),
              /////////////////////////////////////////////////////////////////////////////////////

              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: 1400,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                  "MIAMI'S LEADING REAL STATE PHOTOGRAPHY STUDIO! ",
                  style: GoogleFonts.abel(
                      fontSize: 50,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                //
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                child: SizedBox(
                  height: 500,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      RealStateCart(
                        text: 'REAL ESTATE PHOTOGRAPHY MIAMI',
                        image: 'images/casa.jpg',
                        description:
                            'High resolution photos from our team of professional photographers',
                        onTap: () {},
                      ),
                      RealStateCart(
                        text: 'SINGLE PROPERTY SITE',
                        image: 'images/cassa.jpg',
                        description:
                            'High resolution photos from our team of professional photographers',
                        onTap: () {},
                      ),
                      RealStateCart(
                        text: '3D TOURS/MATTERPORT MIAMI',
                        image: 'images/3dt.jpg',
                        description:
                            'High resolution photos from our team of professional photographers',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              /////////////////////////////////////////////////////////////
              Container(
                height: 50,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                    child: Text(
                  "CONTACT US! ",
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(
                height: 30,
              ),

              const SizedBox(
                height: 30,
              ),
              FutureBuilder(
                  future: _initializeVideo1PlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 500.0),
                        child: AspectRatio(
                          aspectRatio: _controllerone.value.aspectRatio,
                          child: VideoPlayer(_controllerone),
                        ),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (_controllerone.value.isPlaying) {
                          _controllerone.pause();
                        } else {
                          _controllerone.play();
                        }
                      });
                    },
                    child: Icon(_controllerone.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow)),
              ),

              Container(
                height: 50,
                color: Colors.black,
              ),

              const ContactWidget(),
              const SizedBox(
                height: 50,
              ),

              Container(
                height: 5,
                color: Colors.grey.shade500,
              ),
              const FooterWidget()
            ],
          ),
        ));
  }
}
