import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_loading_page/widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  late double width;
  late double height;
  late double ratio;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        width: 200,
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () => null, child: Text("Elevated Button")),
            ElevatedButton(
                onPressed: () => null, child: Text("Elevated Button")),
            ElevatedButton(
                onPressed: () => null, child: Text("Elevated Button")),
            ElevatedButton(
                onPressed: () => null, child: Text("Elevated Button")),
            ElevatedButton(
                onPressed: () => null, child: Text("Elevated Button")),
          ],
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const Positioned(top: 0, right: 0, left: 0, child: NavBar()),
          Positioned(
              right: 80,
              top: 100,
              child: Image.asset(
                "assets/group.png",
                scale: 0.7,
              )),
          Positioned(
            left: 80,
            top: 200,
            child: Text("Hello!",
                style: GoogleFonts.dosis(color: Colors.black45, fontSize: 44)),
          ),
          Positioned(
            top: 250,
            left: 80,
            child: Row(
              children: [
                Text("Welcom To ",
                    style:
                        GoogleFonts.dosis(color: Colors.black45, fontSize: 44)),
                Text("Britu",
                    style:
                        GoogleFonts.aBeeZee(color: Colors.black, fontSize: 44)),
              ],
            ),
          ),
          Positioned(
            top: 310,
            left: 90,
            child: Text("Let's Explore The World!",
                style: GoogleFonts.dosis(color: Colors.black45, fontSize: 28)),
          ),
          Positioned(
              top: 400,
              left: 80,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                width: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(color: Colors.transparent),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(-5, 2),
                          blurRadius: 8,
                          spreadRadius: 1)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Write your email !!",
                      suffixIcon: InkWell(
                          onTap: () => showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text("You've successfully join us"),
                                    content: Text("Thank you for subscribing"),
                                  );
                                },
                              ),
                          splashColor: Colors.transparent,
                          child: const Icon(
                            Icons.send,
                            color: Colors.deepPurple,
                          ))),
                ),
              ))
        ],
      ),
    );
  }
}
