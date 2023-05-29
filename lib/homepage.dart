import 'package:flutter/material.dart';
import 'package:itechnolabs_task/widgets/listitems.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Container(
                // color: Colors.red,
                padding: const EdgeInsets.only(top: 12),
                child: const Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 19,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1570211776091-c19f426d37af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80"),
                        radius: 17,
                      ),
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'What type of',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Affirmations are you',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Looking for you?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              ),



              // making search bar
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade800,
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search_outlined,
                      size: 25,
                      color: Colors.grey,
                    ),
                    Text(
                      " Search...",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
              ),



              //making the notifications pad
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50.0,
                          color: Colors.grey.shade900,
                        ),
                        Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://wallpaperaccess.com/full/3898677.jpg"),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Column(
                                children: [
                                  Text(
                                    "Set your Daily Affirmations",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Notifications",
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://static.vecteezy.com/system/resources/thumbnails/008/141/217/small/panoramic-abstract-web-background-blue-gradient-vector.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: const Column(
                                  children: [
                                    Text(
                                      "I am becoming,",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "Who I want to be..!",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: -16.0,
                      left: 0.0,
                      right: 0.0,
                      bottom: 0.0,
                      child: Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.all(16.0),
                        child: const CircleAvatar(
                          radius: 35.0,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 31,
                            backgroundColor: Colors.deepOrange,
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 45,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              //making list items
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const  Column(
                    children: [
                      Items(
                          text1: "Read",
                          text2: "Affirmations",
                          image: "https://media.istockphoto.com/id/1368099579/vector/man-reading-a-book-and-thinking.jpg?s=612x612&w=0&k=20&c=JvMb1RBBIi_mrysulCNZTd8LHT0aFf4zR-8eqnttBQM="),
                      Items(
                          text1: "Sleep",
                          text2: "Affirmations",
                          image: "https://img.freepik.com/free-vector/insomnia-concept-illustrated_52683-46151.jpg"
                      ),

                      Items(
                          text1: "Exercise",
                          text2: "Affirmations",
                          image: "https://img.freepik.com/premium-vector/happy-man-exercising-park_113065-39.jpg"
                      ),

                    ],

                  ),
                ),
              )

            ],
          ),
        ),



        //floating action button.
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    "https://media.istockphoto.com/id/1065465342/vector/cute-vector-speech-bubble-icon-with-hello-greeting.jpg?s=612x612&w=0&k=20&c=dIq85nTuC9OGJAuuIUdz0u0EQg2N4pEpWzKxa8S0gbY="),
                fit: BoxFit.fill,
              ),
              border: Border.all(width: 4, color: Colors.black),
              shape: BoxShape.circle),
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            onPressed: () {},
            child: const Text(
              "Hii",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),

        //bottom navigation Bar
        bottomNavigationBar: Container(
            height: 70,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 15,
                unselectedFontSize: 15,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                backgroundColor: Colors.grey.shade800,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_today), label: ('To Dos')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.post_add), label: ('Resources')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.check_circle_rounded),
                      label: ('Affirmations')),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.wine_bar_outlined), label: ('Goals')),
                ],
              ),
            )));
  }
}
