import 'package:animations/animations.dart';
import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:flutter/material.dart';

class bangalorePage extends StatefulWidget {
  const bangalorePage({Key? key}) : super(key: key);

  @override
  _bangalorePageState createState() => _bangalorePageState();
}

class _bangalorePageState extends State<bangalorePage> {
  final ContainerTransitionType _containerTransitionType =
      ContainerTransitionType.fade;
////////////////////////////////////////////
  ///follow For more ig: @Countrol4offical
  ///@countrolfour@gmail.com
////////////////////////////////////////////
  bool ticked = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 5,
                    right: 5,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                           image: NetworkImage(
                                "https://res.cloudinary.com/simplotel/image/upload/x_0,y_55,w_1055,h_594,r_0,c_crop/q_80,w_900,dpr_1,f_auto,fl_progressive,c_limit/wonderla-bengaluru/Bengaluru_-_Jungle_Lagoon"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 25),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Icon(
                                    Icons.chevron_left_outlined,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(8),
                                    primary: Colors.white
                                        .withOpacity(0.5), // <-- Button color
                                    /* onPrimary: const Color(0xffFD4416),  */ // <-- Splash color
                                  ),
                                ),
                              ),
                              const Text(
                                "Trip Details",
                                style: TextStyle(
                                    fontFamily: "mont",
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 25),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      ticked = !ticked;
                                    });

                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      margin: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        bottom: 5,
                                      ),
                                      content: const Text(
                                        'Trip Saved ',
                                        style: TextStyle(
                                            fontFamily: "mont",
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      duration: const Duration(seconds: 1),
                                      backgroundColor: Colors.grey.shade800,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      behavior: SnackBarBehavior.floating,
                                      elevation: 0,
                                    ));
                                  },
                                  child: Icon(
                                    ticked
                                        ? Icons.bookmark_border_outlined
                                        : Icons.bookmark,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: const CircleBorder(),
                                    padding: const EdgeInsets.all(8),
                                    primary: Colors.white
                                        .withOpacity(0.5), // <-- Button color
                                    /* onPrimary: const Color(0xffFD4416),  */ // <-- Splash color
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            right: 15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                OpenContainer(
                                    transitionType: _containerTransitionType,
                                    transitionDuration:
                                        const Duration(seconds: 1),
                                    openBuilder: (context, _) => ElasticDrawer(
                                          markPosition: 0.9,
                                          mainColor: Colors.transparent,
                                          drawerColor:
                                              Colors.black.withOpacity(0.3),
                                          mainChild: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1,
                                                  decoration: const BoxDecoration(
                                                      image: DecorationImage(
                                                         image: NetworkImage(
                                "https://res.cloudinary.com/simplotel/image/upload/x_40,y_0,w_1120,h_630,r_0,c_crop,q_80,fl_progressive/w_400,f_auto,c_fit/wonderla-amusement-parks-resort/09_qplbmq"),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          drawerChild: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1,
                                                  decoration: const BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              "assets/infosys/c3.jpg"),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    closedElevation: 0,
                                    closedShape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: const BorderSide(
                                          width: 2,
                                          color: Colors.white,
                                        )),
                                    closedColor: Colors.white.withOpacity(0.1),
                                    closedBuilder: (context, _) => Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(2)),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                "https://c8.alamy.com/comp/E5KY2H/sign-at-the-entrance-wonderla-amusement-park-bangalore-karnataka-india-E5KY2H.jpg"),
                                                fit: BoxFit.cover)))),
                                OpenContainer(
                                    transitionType: _containerTransitionType,
                                    transitionDuration:
                                        const Duration(seconds: 1),
                                    openBuilder: (context, _) => ElasticDrawer(
                                          markPosition: 0.9,
                                          mainColor: Colors.transparent,
                                          drawerColor:
                                              Colors.black.withOpacity(0.3),
                                          mainChild: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1,
                                                  decoration: const BoxDecoration(
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                "data:image/jpeg;base64,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"),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          drawerChild: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1,
                                                  decoration: const BoxDecoration(
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFXXpWJe5DUjUCzWerK3ZAbRWUZCOddEMxDw&usqp=CAU"),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    closedElevation: 0,
                                    closedShape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: const BorderSide(
                                          width: 2,
                                          color: Colors.white,
                                        )),
                                    closedColor: Colors.white.withOpacity(0.1),
                                    closedBuilder: (context, _) => Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(2)),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtpjFtRy3eGYTR5MKCW7oqX3v1tufg7Sz9QA&usqp=CAU"),
                                                fit: BoxFit.cover)))),
                                OpenContainer(
                                    transitionType: _containerTransitionType,
                                    transitionDuration:
                                        const Duration(seconds: 1),
                                    openBuilder: (context, _) => ElasticDrawer(
                                          markPosition: 0.9,
                                          mainColor: Colors.transparent,
                                          drawerColor:
                                              Colors.black.withOpacity(0.3),
                                          mainChild: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1,
                                                  decoration: const BoxDecoration(
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS_pM1ZjqvbbocDNAuXI0NqRM7B3z5FtkPqQ&usqp=CAU"),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          drawerChild: Column(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1,
                                                  decoration: const BoxDecoration(
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUykafsS_xnm5HhrYQVxfL4rTe8C2vUgElTjD1UHgaIabBbUxlBWA-JIhg_Pa3VHabReg&usqp=CAU"),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    closedElevation: 0,
                                    closedShape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: const BorderSide(
                                          width: 2,
                                          color: Colors.white,
                                        )),
                                    closedColor: Colors.white.withOpacity(0.1),
                                    closedBuilder: (context, _) => Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.13,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(2)),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZAm8Rbiq64qLu4WcJSl7G8lToeADubmdbQYyULHDSJRFbcwrSR29t0PH7-XPBub5ouhg&usqp=CAU"),
                                                fit: BoxFit.cover)))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 330,
                    left: 5,
                    right: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                          width: 60,
                          height: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xffFD4416).withOpacity(0.2),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30))),
                          child: const Text(
                            "Bangalore",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "mont",
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Color(0xffFD4416),
                            ),
                          ),
                        ),
                        const Text(
                          "\Rs:50",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "mont",
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                      bottom: 250,
                      left: 15,
                      child: Text("wonderla",
                          style: TextStyle(
                            fontFamily: "mont",
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ))),
                  Positioned(
                      bottom: 200,
                      left: 15,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Color(0xffFD4416),
                          ),
                          Text(
                            "5.0",
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                                fontSize: 20),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Icon(
                            Icons.timer,
                            color: Color(0xffFD4416),
                          ),
                          Text(
                            "1 day",
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                                fontSize: 20),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Icon(
                            Icons.location_on,
                            color: Color(0xffFD4416),
                          ),
                          Text(
                            "280 km",
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                                fontSize: 20),
                          ),
                        ],
                      )),
                  Positioned(
                      bottom: 80,
                      left: 20,
                      right: 20,
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 1,
                        child: Text(
                          "Wonderla is the largest chain of amusement parks in India. It is owned and operated by Wonderla Holidays Limited which is headquartered near Bidadi",
                          style: TextStyle(
                              fontFamily: "mont", color: Colors.grey.shade700),
                        ),
                        alignment: Alignment.center,
                      )),
                  Positioned(
                      bottom: 10,
                      right: 60,
                      left: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            primary: const Color(0xffFD4416),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                30.0,
                              ),
                            )),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            margin: const EdgeInsets.only(
                              left: 15,
                              right: 15,
                              bottom: 350,
                            ),
                            content: const Text(
                              'Trip Added Chart  ',
                              style: TextStyle(
                                  fontFamily: "mont",
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            duration: const Duration(seconds: 1),
                            backgroundColor: Colors.grey.shade800,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            behavior: SnackBarBehavior.floating,
                            elevation: 0,
                          ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Book Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "mont",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Color(0xffFD4416),
                                ))
                          ],
                        ),
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
