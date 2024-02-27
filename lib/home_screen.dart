import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:second_design/product_screen.dart';

/*void main(){
  runApp(MaterialApp(
    color: const Color(0xffF5F6FA),
      debugShowCheckedModeBanner: false,
      home: DevicePreview(enabled: true, builder: (context) => const HomeScreen())));
}*/

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.20),
        child: AppBar(
          backgroundColor: const Color(0xffF5F6FA),
          leading: const Icon(
            Icons.menu,
            color: Color(0xff26283A),
          ),
          actions: [
            Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xff24293d),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen()));
                        },
                        icon: const Icon(
                          Icons.person,
                          color: Color(0xffFFFFFF),
                        )))),
            const SizedBox(
              width: 10,
            )
          ],
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 125),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.search)),
                        const Text("Search"),
                      ],
                    )),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart))
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Explore",
              style: TextStyle(
                  color: Color(0xff272A3A),
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/futniterone.jpeg",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 30,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Item Name",
                                    style: TextStyle(
                                        color: Color(0xff272A3A),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 2),
                                  child: Text(
                                    "Description",
                                    style: TextStyle(color: Color(0xffe8e6eb)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  r"$250.00",
                                  style: TextStyle(color: Color(0xff2a2a35)),
                                ),
                                CircleAvatar(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Color(0xff2a2a35),
                                      )),
                                )
                                //Icon(Icons.add, color: Color(0xffFFFFFF),),
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/futniterone.jpeg",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 30,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Item Name",
                                    style: TextStyle(
                                        color: Color(0xff272A3A),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 2),
                                  child: Text(
                                    "Description",
                                    style: TextStyle(color: Color(0xffe8e6eb)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  r"$250.00",
                                  style: TextStyle(color: Color(0xff2a2a35)),
                                ),
                                CircleAvatar(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Color(0xff2a2a35),
                                      )),
                                )
                                //Icon(Icons.add, color: Color(0xffFFFFFF),),
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/futniterone.jpeg",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 30,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Item Name",
                                    style: TextStyle(
                                        color: Color(0xff272A3A),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 2),
                                  child: Text(
                                    "Description",
                                    style: TextStyle(color: Color(0xffe8e6eb)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  r"$250.00",
                                  style: TextStyle(color: Color(0xff2a2a35)),
                                ),
                                CircleAvatar(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Color(0xff2a2a35),
                                      )),
                                )
                                //Icon(Icons.add, color: Color(0xffFFFFFF),),
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFe),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/futniterone.jpeg",
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 30,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Item Name",
                                    style: TextStyle(
                                        color: Color(0xff272A3A),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 2),
                                  child: Text(
                                    "Description",
                                    style: TextStyle(color: Color(0xffe8e6eb)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  r"$250.00",
                                  style: TextStyle(color: Color(0xff2a2a35)),
                                ),
                                CircleAvatar(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Color(0xff2a2a35),
                                      )),
                                )
                                //Icon(Icons.add, color: Color(0xffFFFFFF),),
                              ],
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Best Selling",
                      style: TextStyle(
                          color: Color(0xff272A3A),
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width / 0.35,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/furniture_two.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Minimal Chair",
                              style: TextStyle(color: Color(0xff272A3A)),
                            ),
                            Text(
                              "Lorem ipsum",
                              style: TextStyle(color: Color(0xffe8e6eb)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  r"$125.00",
                                  style: TextStyle(color: Color(0xff2a2a35)),
                                ),
                                Spacer(), // Added Spacer widget
                                CircleAvatar(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_forward),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
