import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StromScreen extends StatelessWidget {
  const StromScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87, // Dark background color
      appBar: AppBar(
        title:  Text(
          "MoeCellNicco",
          style: GoogleFonts.lato(color: Colors.white,fontSize: 20),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Device Name and Image
            Column(
              children: [
                Image.asset(
                  'assets/file.png',
                  width: 200,
                  height: 250,
                )
              ],
            ),

            // Device Status
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(12),
              ),
              child:  Center(
                child: Column(
                  children: [
                    Text(
                      "Ausgang",
                      style: GoogleFonts.lato(color: Colors.white,fontSize: 18),
                    ),
                    Text(
                      "--",
                    style: GoogleFonts.lato(color: Colors.white,fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[800],
                  child: IconButton(
                    icon: const Icon(Icons.power_settings_new,
                        color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[800],
                  child: IconButton(
                    icon: const Icon(Icons.access_time, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Energy Consumption
             Column(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Energy",
                      style: GoogleFonts.lato(color: Colors.white,fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_today, color: Colors.white,size: 20,),
                            SizedBox(width: 2),
                            Text(
                              "2024-10-25",
                            style: GoogleFonts.lato(color: Colors.white,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Consumption",
                      style: GoogleFonts.lato(color: Colors.white,fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "0",
                      style: GoogleFonts.lato(color: Colors.white,fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
