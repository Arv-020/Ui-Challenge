import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ListTile(
                contentPadding: const EdgeInsets.only(
                  left: 0,
                ),
                minVerticalPadding: 0,
                titleAlignment: ListTileTitleAlignment.top,
                title: Text(
                  "Login Account",
                  style: GoogleFonts.mPlus1(
                      fontWeight: FontWeight.w500, fontSize: 20),
                ),
                subtitle: Text(
                  "Hello, welcome back to account!",
                  style: GoogleFonts.mPlus1(fontSize: 15),
                ),
                trailing: const Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: NetworkImage(
                              "https://patrickcoombe.com/wp-content/uploads/2015/05/americanFlag2019aPNG-1.png"),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Icon(
                          UniconsSolid.angle_down,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        // decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     boxShadow: [
                        //       BoxShadow(
                        //           spreadRadius: 1,
                        //           blurRadius: 50,
                        //           color: Colors.black.withOpacity(0.5),
                        //           offset: Offset(0, 0))
                        //     ],
                        //     borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Email",
                            style: GoogleFonts.mPlus1(
                                fontSize: 12, color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 50,
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(0, 0))
                            ],
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Phone Number",
                            style: GoogleFonts.mPlus1(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Phone Number",
                style: GoogleFonts.mPlus1(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  onTapOutside: (e) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  keyboardType: TextInputType.phone,
                  cursorColor: Colors.black,
                  style: GoogleFonts.mPlus1(fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10),
                    prefixIcon: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          radius: 12,
                          backgroundImage: NetworkImage(
                              "https://patrickcoombe.com/wp-content/uploads/2015/05/americanFlag2019aPNG-1.png"),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        const Icon(
                          UniconsSolid.angle_down,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Container(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    suffixIcon: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        // radius: 10,
                        maxRadius: 1,
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.done,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(26),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0.5),
                      borderRadius: BorderRadius.circular(26),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xff32357C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26)),
                      fixedSize: const Size(double.maxFinite, 50)),
                  child: Text(
                    "Send Code",
                    style: GoogleFonts.mPlus1(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 0.5,
                    width: 50,
                    color: Colors.grey,
                  ),
                  Text(
                    "Sign in with Google or Facebook",
                    style: GoogleFonts.mPlus1(color: Colors.grey),
                  ),
                  Container(
                    height: 0.5,
                    width: 50,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26)),
                        fixedSize: const Size(double.maxFinite, 50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Google",
                          style: GoogleFonts.mPlus1(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26)),
                        fixedSize: const Size(double.maxFinite, 50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/facebook.png",
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Facebook",
                          style: GoogleFonts.mPlus1(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.mPlus1(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sign Up",
                    style: GoogleFonts.mPlus1(
                        color: Colors.orange, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
