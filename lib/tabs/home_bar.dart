import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tourx_ui_c4/OpenContainers/cappadocia.dart';
import 'package:tourx_ui_c4/OpenContainers/infosys.dart';
import 'package:tourx_ui_c4/OpenContainers/bangalore.dart';
import 'package:tourx_ui_c4/OpenContainers/mysore.dart';

class IndexOne extends StatefulWidget {
  const IndexOne({Key? key}) : super(key: key);

  @override
  _IndexOneState createState() => _IndexOneState();
}

class _IndexOneState extends State<IndexOne> {
  @override
  Widget build(BuildContext context) {
    ContainerTransitionType _containerTransitionType =
        ContainerTransitionType.fade;

    return SafeArea(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Discover \nA IV Trip",
                style: TextStyle(fontSize: 35, fontFamily: "mont"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: TextFormField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search watches, brands',
                hintStyle:
                    TextStyle(color: const Color(0xffFD4416).withOpacity(0.6)),
                filled: true,
                fillColor: const Color(0xffFD4416).withOpacity(0.1),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: const Color(0xffFD4416).withOpacity(0.5),
                  ),
                  borderRadius: BorderRadius.circular(80.0),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(80.0),
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: const Color(0xffFD4416).withOpacity(0.6),
                  ),
                ),
                suffixIcon: Container(
                  height: 55,
                  decoration: (const BoxDecoration(
                      color: Color(0xffFD4416),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
                  width: 55,
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.filter_alt_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
            ),
            CarouselSlider(
                items: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                    width: 400,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.holidify.com/images/cmsuploads/compressed/Flash_Tower_kvddsv_20200312102612.jpeg"),
                            fit: BoxFit.cover)),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(15, 290, 15, 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white10),
                      width: 150,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                            child: OpenContainer(
                              transitionType: _containerTransitionType,
                              transitionDuration: const Duration(seconds: 2),
                              openBuilder: (context, _) =>
                                  const bangalorePage(),
                              closedElevation: 0,
                              closedShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  side: const BorderSide(
                                    color: Colors.transparent,
                                  )),
                              closedColor: Colors.white.withOpacity(0.1),
                              closedBuilder: (context, _) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(25, 15, 0, 0),
                                    width: 60,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(70))),
                                    child: const Text(
                                      "Bangalore",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "mont",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Color(0xffFD4416),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text("wonderla",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontFamily: "mont",
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 15.0),
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(80))),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.shopping_cart_rounded)),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Text("\Rs.1000",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "mont",
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                    width: 400,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.freewalldownload.com/india/mysore-palace-india-free-high-definition-pictures-download.jpg"),
                            fit: BoxFit.cover)),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(15, 290, 15, 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white10),
                      width: 150,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                            child: OpenContainer(
                              transitionType: _containerTransitionType,
                              transitionDuration: const Duration(seconds: 2),
                              openBuilder: (context, _) =>
                                  const mysorePage(),
                              closedElevation: 0,
                              closedShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  side: const BorderSide(
                                    color: Colors.transparent,
                                  )),
                              closedColor: Colors.white.withOpacity(0.1),
                              closedBuilder: (context, _) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(25, 15, 0, 0),
                                    width: 60,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      "Mysore",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "mont",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color(0xffFD4416),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text("Mysore Palace",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: "mont",
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(80))),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.shopping_cart_rounded)),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Text("\Rs.50",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "mont",
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                    width: 400,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://image3.mouthshut.com/images/imagesp/925035232s.jpg"),
                            fit: BoxFit.cover)),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(15, 290, 15, 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white10),
                      width: 150,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                            child: OpenContainer(
                              transitionType: _containerTransitionType,
                              transitionDuration: const Duration(seconds: 2),
                              openBuilder: (context, _) =>
                                  const infosysPage(),
                              closedElevation: 0,
                              closedShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  side: const BorderSide(
                                    color: Colors.transparent,
                                  )),
                              closedColor: Colors.white.withOpacity(0.1),
                              closedBuilder: (context, _) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(25, 15, 0, 0),
                                    width: 60,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      "Coorg",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "mont",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Color(0xffFD4416),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text("Mountain",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontFamily: "mont",
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 15.0),
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(80))),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.shopping_cart_rounded)),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Text("\Rs.0",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "mont",
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                    width: 400,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.siasat.com/wp-content/uploads/2022/12/Infosys-1.jpg"),
                            fit: BoxFit.cover)),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(15, 290, 15, 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white10),
                      width: 150,
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                            child: OpenContainer(
                              transitionType: _containerTransitionType,
                              transitionDuration: const Duration(seconds: 2),
                              openBuilder: (context, _) =>
                                  const CappadociaPage(),
                              closedElevation: 0,
                              closedShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                  side: const BorderSide(
                                    color: Colors.transparent,
                                  )),
                              closedColor: Colors.white.withOpacity(0.1),
                              closedBuilder: (context, _) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(25, 15, 0, 0),
                                    width: 60,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    child: const Text(
                                      "Bangalore",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "mont",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Color(0xffFD4416),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text("Infosys",
                                            style: TextStyle(
                                                fontSize: 30,
                                                fontFamily: "mont",
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 15.0),
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(80))),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.shopping_cart_rounded)),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Text("\Student ID",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "mont",
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  pauseAutoPlayOnTouch: true,
                  height: 450.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 5,
                  enableInfiniteScroll: false,
                  reverse: true,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.decelerate,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )),
          ],
        ),
      );
    }));
  }
}
