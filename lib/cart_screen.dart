import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:second_design/home_screen.dart';


/*void main(){
  runApp(MaterialApp(
      color: const Color(0xffF5F6FA),
      debugShowCheckedModeBanner: false,
      home: DevicePreview(enabled: true, builder: (context) => const CartScreen())));
}*/


class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool isChecked = false; // Track the checkbox state
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cart"),
        leading: IconButton(
          onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView(
        children: [
          buildContainer("assets/images/furniture _three.jpeg", "Minimalist Chair", 235.00),
          const SizedBox(height: 10),
          buildContainer("assets/images/furniture _three.jpeg", "Minimalist Chair", 124.00),
          const SizedBox(height: 10),
          buildContainer("assets/images/furniture _three.jpeg", "Minimalist Chair", 289.00),
        ],
      ),
    );
  }

  Widget buildContainer(String imagePath, String itemName, double price) {
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                isChecked = !isChecked; // Toggle checkbox state
                if (isChecked) {
                  // Show modal bottom sheet when checkbox is checked
                  showModalBottomSheet(
                    context: context,
                    /*shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25)
                      )
                    ),*/
                    builder: (BuildContext context) {
                      return Container(
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          )
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Selected items", style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w400,),),
                                  Text(r"$235.00", style: TextStyle(color: Color(0xffFF6670), fontSize: 15, fontWeight: FontWeight.w300),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Shipping Fee", style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w400,),),
                                  Text(r"$30.00", style: TextStyle(color: Color(0xffFF6670), fontSize: 15, fontWeight: FontWeight.w300),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 40,right: 40),
                              child: Divider(
                                color: Colors.black,
                                height: 5,
                                thickness: 0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("SubTotal", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600,fontSize: 20),),
                                  Text(r"$250.00", style: TextStyle(color: Color(0xffFF6670),fontWeight: FontWeight.w600,fontSize: 20),)
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.black,
                                ),
                                child: Center(child: Text("Checkout", style: TextStyle(color: Colors.white),)),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              });
            },
            icon: isChecked ? const Icon(Icons.check_box) : const Icon(Icons.check_box_outline_blank),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imagePath,
              height: 75,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 5),
                child: Text(
                  itemName,
                  style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "\$$price",
                      style: const TextStyle(color: Color(0xffFF6670), fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (quantity > 0) {
                            quantity--;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    Text(
                      quantity.toString(),
                      style: const TextStyle(fontSize: 17),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

