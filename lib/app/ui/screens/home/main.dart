import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/app/controller/home.dart';
import '../../../controller/main.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // HomeController.to.getPopularMovies();
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedFontSize: 14.0,
            currentIndex: MainController.to.selectedIndex,
            selectedItemColor: Colors.white,
            selectedIconTheme: const IconThemeData(color: Colors.black87),
            unselectedFontSize: 12.0,
            selectedLabelStyle:
                const TextStyle(color: Colors.white, fontSize: 12.0),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/home.png',
                    scale: 5.0,
                    color: Colors.white,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/search.png',
                    scale: 5.0,
                    color: Colors.white,
                  ),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/clapperboard.png',
                    scale: 5.0,
                    color: Colors.white,
                  ),
                  label: "Coming soon"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/download.png',
                    scale: 5.0,
                    color: Colors.white,
                  ),
                  label: "Download"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/menu.png',
                    scale: 5.0,
                    color: Colors.white,
                  ),
                  label: "More"),
            ],
            onTap: (index) {
              MainController.to.selectedIndex = index;
              MainController.to.controller.jumpToPage(index);
            },
          )),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            leading: Image.asset(
              'assets/images/logo.jpg',
              scale: 10.0,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "TV Shows",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Movies",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "My List",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/bck.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/add.png',
                        scale: 5.0,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "My List",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/play.png',
                      color: Colors.black,
                      scale: 5.0,
                    ),
                    label: const Text("Play",
                        style: TextStyle(color: Colors.black, fontSize: 18.0))),
                MaterialButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/info.png',
                        scale: 5.0,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Info",
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 260.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: Text(
                      "Continue watching",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                            width: 100.0,
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 150.0,
                                    width: 150.0,
                                    child:
                                        Image.asset('assets/images/bck.jpg')),
                                LinearProgressIndicator(
                                  value: 50.0,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'assets/images/info.png',
                                          scale: 8.0,
                                          color: Colors.white,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'assets/images/ver.png',
                                          scale: 8.0,
                                          color: Colors.white,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SizedBox(
                            width: 100.0,
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 150.0,
                                    width: 150.0,
                                    child:
                                        Image.asset('assets/images/bck.jpg')),
                                LinearProgressIndicator(
                                  value: 50.0,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'assets/images/info.png',
                                          scale: 8.0,
                                          color: Colors.white,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'assets/images/ver.png',
                                          scale: 8.0,
                                          color: Colors.white,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 240.0,
                    ),
                    child: Text(
                      "Popular on Netflix",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 170.0,
                    child: FutureBuilder(
                      // future: HomeController.to.getPopularMovies(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Text("loading");
                        } else {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              // itemCount: snapshot.data.length,
                              itemCount: 5,
                              itemBuilder: (context, int index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 100.0,
                                      width: 100.0,
                                      child:
                                          // Image.network(snapshot.data[index].data['image']),
                                          Image.network(
                                              "https://i0.wp.com/chennaivision.com/wp-content/uploads/2022/09/Viduthalai-Soori-.jpg?fit=352%2C550&ssl=1"),
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 300.0,
                    ),
                    child: Text(
                      "Animated",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 170.0,
                    child: FutureBuilder(
                      // future: HomeController.to.getPopularMovies(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Text("loading");
                        } else {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              // itemCount: snapshot.data.length,
                              itemCount: 5,
                              itemBuilder: (context, int index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 100.0,
                                      width: 100.0,
                                      child:
                                          // Image.network(snapshot.data[index].data['image']),
                                          Image.network(
                                              "https://i0.wp.com/chennaivision.com/wp-content/uploads/2022/09/Viduthalai-Soori-.jpg?fit=352%2C550&ssl=1"),
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 250.0,
                    ),
                    child: Text(
                      "Netflix Originals",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 170.0,
                    child: FutureBuilder(
                      // future: HomeController.to.getPopularMovies(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Text("loading");
                        } else {
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              // itemCount: snapshot.data.length,
                              itemCount: 5,
                              itemBuilder: (context, int index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 100.0,
                                      width: 100.0,
                                      child:
                                          // Image.network(snapshot.data[index].data['image']),
                                          Image.network(
                                              "https://i0.wp.com/chennaivision.com/wp-content/uploads/2022/09/Viduthalai-Soori-.jpg?fit=352%2C550&ssl=1"),
                                    ),
                                  ),
                                );
                              });
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 350.0,
              child: Column(
                children: [
                  Text(
                    "Available Now :  Season 2",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      height: 250.0,
                      width: 500.0,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuha4QXeAUb1h_OSRUPu6oASTQPH_8mdDFg-KqtWBMwDM23jEXbcGTs-5YdHyijQsQ2kg&usqp=CAU',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/play.png',
                              color: Colors.black,
                              scale: 5.0,
                            ),
                            label: const Text("Play",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0))),
                        ElevatedButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/add.png',
                              color: Colors.black,
                              scale: 5.0,
                            ),
                            label: const Text("My List",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
