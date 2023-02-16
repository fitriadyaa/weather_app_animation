import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class DayScreen extends StatelessWidget {
  const DayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/day.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            IconlyBold.discovery,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Bandung",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            IconlyBold.arrowDown2,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const Text(
                        "29°",
                        style: TextStyle(fontSize: 120, color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(text: "10 February,"),
                            TextSpan(
                                text: " Today",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Image.asset(
                        "assets/icons/cloudy_icon.png",
                        scale: 3,
                      ),
                      const Text(
                        "Partly Cloudy",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(31, 79, 72, 72).withOpacity(0.5),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
