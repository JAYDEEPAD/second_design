import 'package:device_preview/device_preview.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';
import 'package:second_design/cart_screen.dart';

/*void main(){
  runApp(MaterialApp(
      color: const Color(0xffF5F6FA),
      debugShowCheckedModeBanner: false,
      home: DevicePreview(enabled: true, builder: (context) => const ProductScreen())));
}*/

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int mycount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.35),
        child: Stack(
          alignment: Alignment.bottomRight,
          clipBehavior: Clip.none,
          children: [
                AppBar(
                centerTitle: true,
                title: Text(
                  "Product",
                  style: TextStyle(
                      color: Color(0xff24293d), fontWeight: FontWeight.w700),
                ),
                leading: Icon(Icons.arrow_back, color: Color(0xff26283A)),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CartScreen()));
                      },
                      icon: Icon(Icons.shopping_cart))
                ],
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/furniture _three.jpeg"),
                        fit: BoxFit.fill,
                      )),
                )),
            Positioned(
              top: MediaQuery.of(context).padding.top * 09, // Adjust the top position
              right: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/heart.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ),
              ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 2),
                child: Text(
                  r"$115.00",
                  style: TextStyle(fontSize: 27, color: Color(0xffFF6670)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Minimal Chair ",
                      style: TextStyle(fontSize: 20),
                    ),
                    FivePointedStar(
                      onChange: (count) {
                        setState(() {
                          mycount = count;
                        });
                      },
                    ),
                    Text(
                      mycount.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 10,
                ),
                child: Text(
                  "Color Option",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 3),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Color(0xffFF6670),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Color(0xffee9597),
                            width: 10,
                          )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Color(0xffb9bacf),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Color(0xffb9bacf),
                            width: 10,
                          )),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Color(0xff24293d),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Color(0xff24293d),
                            width: 10,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Description",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                minLines: 1,
                maxLines: 3,
              ),
             /* Container(
                height: 117,
                width: 100,
                color: Colors.cyan,
              ),*/
              /*SizedBox(height: 105,),*/
              SizedBox(height: MediaQuery.of(context).size.height * 0.17,),
              Positioned(
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width * 0.45,
                      //margin: EdgeInsets.only(top: 167),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );

  }
}
