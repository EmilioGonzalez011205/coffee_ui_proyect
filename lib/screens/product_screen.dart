// ignore_for_file: deprecated_member_use

import 'package:coffee_ui_proyect/res/resorces_list.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final int index;
  const ProductScreen({super.key, required this.index});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var s = true;
  var m = false;
  var l = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFF1d2630),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image(
                          image: images[widget.index],
                          fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1d2630),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.arrow_back_ios_outlined,
                                      size: 40,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  )
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 55,
                                    width: 55,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF1d2630),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      Icons.favorite,
                                      size: 40,
                                      color: Colors.orange,
                                    ),
                                  )
                                )
                              ],
                              ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFF1d2630).withOpacity(0.6),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      names[widget.index],
                                      style: TextStyle(
                                        fontSize: 35,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      with_[widget.index],
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          s
                                            ? ratting[widget.index]
                                            .toString()
                                              : m
                                                ? mediumRating[widget.index]
                                                  .toString()
                                                  : largeRating[widget.index]
                                                  .toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        Text(
                                          s
                                            ? prefix[widget.index]
                                              : m
                                                ? prefixMedium[widget.index]
                                                  : prefixMedium[widget.index],
                                          style: TextStyle(
                                
                                            color: Colors.white.withOpacity(0.5),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    )
                                  ]
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1d2630),
                                            borderRadius: BorderRadius.circular(10)),
                                            child: Padding(padding: EdgeInsets.all(8),
                                            child: Column(
                                              mainAxisAlignment: 
                                                MainAxisAlignment.spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.coffee,
                                                  color: Colors.orange,
                                                ),
                                                Text(
                                                  "Coffee",
                                                  style: TextStyle(
                                                    color: Colors.white.
                                                    withOpacity(0.5)
                                                  ),
                                                ),
                                              ],
                                            ),
                                            )
                                        ),
                                        SizedBox(width: 15,),
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1d2630),
                                            borderRadius: BorderRadius.circular(10)),
                                            child: Padding(padding: EdgeInsets.all(8),
                                            child: Column(
                                              mainAxisAlignment: 
                                                MainAxisAlignment.spaceBetween,
                                              children: [
                                                Icon(
                                                  Icons.water_drop_rounded,
                                                  color: Colors.orange,
                                                ),
                                                Text(
                                                  "Milk",
                                                  style: TextStyle(
                                                    color: Colors.white.
                                                    withOpacity(0.5)
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                        Container(
                                          height: 40,
                                          width: 140,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1d2630),
                                            borderRadius: BorderRadius.circular(10),

                                          ),
                                          child: Center(
                                            child: Text(
                                              s ? "Smell Roasted"
                                                : m 
                                                  ? "Medium Roasted"
                                                  : "Large Roasted",
                                                  style: TextStyle(
                                                    color:Colors.white.withOpacity(0.5),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  ),
                                          ),
                                        )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              )
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 30),
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                                ),
                              ),
                              SizedBox(height: 15,),
                              Text("A capuccino is the perfect balance of espresso\nsteamed, milk. This coffee is all about the structure.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 15,),
                              Text("Size",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        s= true;
                                        m= false;
                                        l= false;
                                        setState(() {});
                                        
                                      },
                                      child: Container(
                                        height: 65,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: s 
                                          ? Color(0xFF1d2630)
                                          : Colors.white.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: s
                                              ? Colors.orange
                                              : Color(0xFF1d2630)
                                          )
                                        ),
                                        child: Center(
                                          child: Text(
                                            "S", 
                                            style: TextStyle(
                                                color: s
                                                    ? Colors.orange
                                                    : Colors.white.withOpacity(0.8),
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        s= false;
                                        m= true;
                                        l= false;
                                        setState(() {});
                                        
                                      },
                                      child: Container(
                                        height: 65,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: m
                                          ? Color(0xFF1d2630)
                                          : Colors.white.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: m
                                              ? Colors.orange
                                              : Color(0xFF1d2630)
                                          )
                                        ),
                                        child: Center(
                                          child: Text(
                                            "M", 
                                            style: TextStyle(
                                                color: m
                                                    ? Colors.orange
                                                    : Colors.white.withOpacity(0.8),
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        s= false;
                                        m= false;
                                        l= true;
                                        setState(() {});
                                        
                                      },
                                      child: Container(
                                        height: 65,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: l
                                          ? Color(0xFF1d2630)
                                          : Colors.white.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: l
                                              ? Colors.orange
                                              : Color(0xFF1d2630)
                                          )
                                        ),
                                        child: Center(
                                          child: Text(
                                            "L", 
                                            style: TextStyle(
                                                color: l
                                                    ? Colors.orange
                                                    : Colors.white.withOpacity(0.8),
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      )
                    ],
                  ),
              )
            ),
            Expanded(
                   child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(height: 0),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Price",
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.6),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Text("\$",
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),),
                                            SizedBox(width: 10,),
                                            Text(s? prices[widget.index] : m? mediumPrice[widget.index] : largePrice[widget.index],
                                            style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 50),
                                      child: Container(
                                        height: 80,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Center( child: Text("Buy now",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              )                 
          ],
        ),
      ),
    );
  }
}