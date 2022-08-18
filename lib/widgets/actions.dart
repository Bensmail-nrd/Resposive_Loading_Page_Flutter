import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionsNavBar extends StatelessWidget {
  const ActionsNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 750) {
      return Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text("Home"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text("Products"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text("Features"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 50),
            child: Text("Contact"),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                gradient: const LinearGradient(
                    colors: [Colors.purpleAccent, Colors.deepPurpleAccent],
                    end: Alignment.topLeft,
                    begin: Alignment.bottomRight),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black54,
                      spreadRadius: 1,
                      blurRadius: 14,
                      offset: Offset(-3, 3))
                ]),
            child: Text(
              "Login",
              style: GoogleFonts.acme(color: Colors.white, fontSize: 28),
            ),
          ),
        ],
      );
    } else {
      return IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: Icon(Icons.menu));
    }
  }
}
