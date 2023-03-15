import 'package:animations/animations.dart';
import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:flutter/material.dart';

class CappadociaPage extends StatefulWidget {
  const CappadociaPage({Key? key}) : super(key: key);

  @override
  _CappadociaPageState createState() => _CappadociaPageState();
}

class _CappadociaPageState extends State<CappadociaPage> {
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
                                "https://images.livemint.com/img/2021/07/21/1600x900/9a3a145a-acd7-11eb-84cc-e50dee918442_1624105453600_1626873434752.jpg"),
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
                                "https://www.infosys.com/content/dam/infosys-web/en/global-resource/media-resources/images/blore-mc-hall-lrg.jpg"),
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
                                                              "assets/capadoccia/c3.jpg"),
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
                                "https://fastly.4sqi.net/img/general/600x600/27434170_Jm3mr5CgVnAXl4l-NB_crJnDNQlDO6fXMAYM4TaPGis.jpg"),
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
                                "https://media.glassdoor.com/lst2x/2e/f2/8f/f5/pyramid-building.jpg"),
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
                                "https://wallpapercave.com/wp/wp10339962.jpg"),
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
                                "https://www.shutterstock.com/image-photo/brno-czechia-november-5-2019-260nw-1638704224.jpg"),
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
                                "https://e1.pxfuel.com/desktop-wallpaper/303/826/desktop-wallpaper-infosys.jpg"),
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
                                "https://www.shutterstock.com/image-photo/mississauga-on-canada-august-27-260nw-2032156478.jpg"),
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
                                "https://e1.pxfuel.com/desktop-wallpaper/974/506/desktop-wallpaper-infosys-on-twitter.jpg"),
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
                          "\Student ID",
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
                      child: Text("Infosys",
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
                            "1 hour",
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
                            "250 km",
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
                          "Infosys Limited is an Indian multinational information technology company that provides business consulting, information technology and outsourcing services. The company was founded in Pune and is headquartered in Bangalore.Infosys is the second-largest Indian IT company.",
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
