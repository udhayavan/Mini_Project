import 'package:animations/animations.dart';
import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:flutter/material.dart';

class mysorePage extends StatefulWidget {
  const mysorePage({Key? key}) : super(key: key);

  @override
  _mysorePageState createState() => _mysorePageState();
}

class _mysorePageState extends State<mysorePage> {
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
                                "https://t4.ftcdn.net/jpg/03/03/88/89/240_F_303888934_Fuq3FS0ShprSPjePYIpuwCdEnIaWBjDH.jpg"),
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
                                "https://t3.ftcdn.net/jpg/04/29/50/96/240_F_429509699_3PPlpaJuR73XO9chY0vWWQfkw2bSFz08.jpg"),
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
                                "https://t3.ftcdn.net/jpg/03/22/78/68/240_F_322786899_wlWTxxf7vXxcewYdFbgv4BrchZIlvDgi.jpg"),
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
                                "https://t4.ftcdn.net/jpg/01/37/70/87/240_F_137708748_dpBl3wtAB6QXP6gbDA9MWC3YwbeayeJS.jpg"),
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
                                "https://t3.ftcdn.net/jpg/05/52/07/08/240_F_552070833_e3deHoHlrD9NUbXLJp9AxKBWYrBN2Nl5.jpg"),
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
                                "https://t4.ftcdn.net/jpg/04/54/44/15/240_F_454441530_lcxVgtugFf69THIjKEk8wM9Nwqm5t1tf.jpg"),
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
                                "https://t4.ftcdn.net/jpg/00/09/37/69/240_F_9376906_3MEilQu0VQkC8bDEYUDvUFxUHtqzF0O9.jpg"),
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
                                "https://t4.ftcdn.net/jpg/02/48/51/93/240_F_248519351_gi01kb7m3MDrxyuIWdpq84YFK7woCQJj.jpg"),
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
                                "https://t4.ftcdn.net/jpg/04/29/51/03/240_F_429510363_qgyCedS52P8ewuiKREOecnp5gN9Uj2xP.jpg"),
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
                            "mysore",
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
                      child: Text("mysore palace",
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
                            "5 hours",
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
                            "275 km",
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
                          "Mysore Palace, also known as Amba Vilas Palace, is a historical palace and a royal residence (house). It is located in Mysore, Karnataka.",
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
