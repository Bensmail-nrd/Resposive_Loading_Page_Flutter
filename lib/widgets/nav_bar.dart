import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_loading_page/widgets/actions.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                      colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
                      end: Alignment.topLeft,
                      begin: Alignment.bottomRight),
                ),
                child: Text(
                  "B",
                  style: GoogleFonts.alexBrush(
                      color: Colors.white,
                      fontSize: 43,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 5),
              Text(
                "Britu",
                style: GoogleFonts.adventPro(color: Colors.black, fontSize: 43),
              ),
            ],
          ),
          ActionsNavBar()
        ],
      ),
    );
  }
}
