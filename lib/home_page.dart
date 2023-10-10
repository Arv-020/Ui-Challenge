import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 165,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "Profile",
                            style: GoogleFonts.mPlus1(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.line_style_sharp,
                                color: Colors.black,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 25,
                        left: 100,
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              border: Border.all(
                                  color: Colors.white,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  style: BorderStyle.solid,
                                  width: 1),
                              borderRadius: BorderRadius.circular(100)),
                          child: Center(
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://www.hrccd.com/blog/wp-content/uploads/2019/11/attractive-smile.jpg"),
                              radius: 50,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Angelica Melli",
                  style: GoogleFonts.mPlus1(
                      fontSize: 23, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blueGrey,
                      child: Icon(
                        UniconsLine.location_point,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Venice, Italy",
                      style: GoogleFonts.mPlus1(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.blueGrey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blueGrey,
                      child: Icon(
                        Icons.tag,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Age 26",
                      style: GoogleFonts.mPlus1(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.blueGrey),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 20,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "Regular",
                          style: GoogleFonts.mPlus1(
                              fontSize: 12,
                              color: Colors.red,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Angelica's Note",
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Etiam id dolar ex. Vivamus lobortis varius tortor, the elementum eleifend ligula tincidunt eget. Mauris ut semper odio. Etiam at justo a masssa.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.mPlus1(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
