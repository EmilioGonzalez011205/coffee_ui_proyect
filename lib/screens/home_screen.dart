// ignore_for_file: deprecated_member_use

import 'package:coffee_ui_proyect/res/resorces_list.dart';
import 'package:coffee_ui_proyect/screens/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1d2630),
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 20,
                  color: Colors.white.withOpacity(0.1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color:Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),),

                    child: Column(
                      children: [
                        circleRow(),
                        circleRow()
                        ],
                      ),
                    ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "lib/Images/profile.jpg",
                      height: 40,
                      width: 40,
                      //fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Text("Find the best", 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
            ),
            SizedBox(height: 10,),
            Text(
            "Cofee for you", 
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
            ),
            SizedBox(height: 25,),
            Container(
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.1),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.coffee,
                  
                  color: Colors.white.withOpacity(0.3),),
                  border: InputBorder.none,
                  hintText: "Find your coffee...",
                  hintStyle: TextStyle(
                    color:Colors.white.withOpacity(0.3), 
                    fontSize: 25)),
              ),
            ),
            SizedBox(height: 15,),
            SizedBox(height: 30,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
              return GestureDetector(
                child: Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
                child: Text(names[index], 
                style: TextStyle(
                  color: category[index] ? Colors.orange : Colors.white.withOpacity(0.4),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),),
                ),
              );
            },),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 370,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 9,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) 
                            => ProductScreen(index:index),));
                          },
                          child: Card(
                            elevation: 20,
                            color: Colors.white.withOpacity(0.1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(right: 20),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              width: 210,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: SizedBox(height: 170, width: double.infinity,
                                    child: Stack(
                                      children: [
                                        Positioned.fill(child: Image(image:images[index],
                                        fit: BoxFit.cover,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: 25,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color:Color(0xFF1d2630).
                                                    withOpacity(0.7),
                                              borderRadius: 
                                                  BorderRadius.only(
                                                bottomLeft: 
                                                    Radius.circular(10),
                                                ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 14,
                                                  ),
                                                  Text(ratting[index].toString(),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                              ],
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                    )
                                  ),
                                  SizedBox(height: 10,),
                                  Text(names[index], 
                                  style: TextStyle(
                                    color:Colors.white, 
                                    fontSize: 30, 
                                    fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(with_[index], 
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("\$ ", 
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Text(prices[index], 
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                          ),
                                        ),
                                    ],
                                  )
                                ],
                              ),
                              ),
                          ),
                        );

                      },),
                    ),
                    SizedBox(height: 20,),
                    Text("Special for you",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20,),
                    customCard(images[5]),
                    SizedBox(height: 20,),
                    customCard(images[6]),
                    SizedBox(height: 20,),
                    customCard(images[7]),
                  ],
                ),
              )
              )
          ],
        ),
      ),
    );
  }

  Widget circleRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        circleIcon(),
        circleIcon(),
      ],
    );
  }
  Widget circleIcon(){
    return Icon(Icons.circle, color: Colors.white.withOpacity(0.5),
    size: 10,);
  }

  Widget customCard(AssetImage asset){
    return Card(
      color: Colors.white.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 120,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: double.infinity,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(image: asset, fit: BoxFit.cover)
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(width: 10,),
            Text(
              "5 cofee beans You \nMust Try!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),)
          ],
        ),
      ),
    );
  } 
 }