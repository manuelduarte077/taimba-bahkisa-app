import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () => print('Menu Cliked'),
              child: SvgPicture.asset(
                'assets/menu.svg',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/rainy.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 150,
                            ),
                            Text(
                              'Managua',
                              style: GoogleFonts.lato(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '04:00 PM - Tuesday, March 23, 2021',
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '35\u2103',
                        style: GoogleFonts.lato(
                          fontSize: 85,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/moon.svg',
                            width: 34,
                            height: 34,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Night',
                            style: GoogleFonts.lato(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 40),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Wind',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  '10',
                                  style: GoogleFonts.lato(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'km/h',
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 5,
                                      width: 50,
                                      color: Colors.white38,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 5,
                                      color: Colors.greenAccent,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Rain',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  '2',
                                  style: GoogleFonts.lato(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '%',
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 5,
                                      width: 50,
                                      color: Colors.white38,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 4,
                                      color: Colors.deepPurpleAccent,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Wind',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  '10',
                                  style: GoogleFonts.lato(
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '%',
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 5,
                                      width: 50,
                                      color: Colors.white38,
                                    ),
                                    Container(
                                      height: 5,
                                      width: 5,
                                      color: Colors.redAccent,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
