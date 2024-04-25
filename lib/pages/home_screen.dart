import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreenState extends StatefulWidget {
  const HomeScreenState({super.key});

  @override
  State<HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text("Weather App"),
      ),
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bg-wallpaper.jpg"),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(14, 10, 14, 0),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Find"),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.transparent.withOpacity(0.2),
                          ),
                          // color: Colors.transparent.withOpacity(0.2),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            textAlign: TextAlign.center,
                            controller: textEditingController,
                            decoration: InputDecoration(
                              hintText: "Enter city name",
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: Text(
                        "Esfahan esfahan",
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: Text(
                        "data",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.sun_min,
                      size: 130,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        //unicode of tempreture
                        "14" + "\u{000B0}",
                        style: Theme.of(context).textTheme.displayLarge,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Container(
                    width: double.infinity,
                    height: 4,
                    color: Colors.transparent.withOpacity(0.3),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      // Return a container for each item
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(right: 12),
                            width: 100,
                            height: 100, // Set width for each item
                            // color: Colors.white,
                            child: Card(
                              elevation: 0,
                              color: Colors.transparent.withOpacity(0.5),
                              child: Column(
                                children: [
                                  Text(
                                    "folan ja",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Icon(Icons.cloud),
                                  Text("data",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium)
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 28),
                  child: Container(
                    width: double.infinity,
                    height: 4,
                    color: Colors.transparent.withOpacity(0.3),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 90,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.transparent.withOpacity(0.4),
                        ),
                        child: Column(
                          children: [
                            Text("Wild speed"),
                            Text("12.3m/s"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 45,
                        width: 4,
                        color: Colors.transparent.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 75,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.transparent.withOpacity(0.4),
                        ),
                        child: Column(
                          children: [
                            Text("Sun rise"),
                            Text("4:53AM"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 50,
                        width: 4,
                        color: Colors.transparent.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.transparent.withOpacity(0.4),
                        ),
                        child: Column(
                          children: [
                            Text("Sun set"),
                            Text("7:23PM"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 45,
                        width: 4,
                        color: Colors.transparent.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 90,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.transparent.withOpacity(0.4),
                        ),
                        child: Column(
                          children: [
                            Text("Humidity"),
                            Text("65%"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
