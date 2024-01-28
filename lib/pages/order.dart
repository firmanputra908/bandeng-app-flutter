import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_tas/service/database.dart';
import 'package:project_tas/service/shared_pref.dart';
import 'package:project_tas/widget/widget_support.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
// String? id, wallet;
// int total=0, amount2=0;

// void startTimer(){
//   Timer(Duration(seconds: 3), () {
//     amount2=total;
//     setState(() {

//     });
//   });
// }

// getthesharedpref()async{
// id= await SharedPreferenceHelper().getUserId();
// wallet= await SharedPreferenceHelper().getUserWallet();
// setState(() {

// });
// }

// ontheload()async{
// await getthesharedpref();
// foodStream= await DatabaseMethods().getFoodCart(id!);
// setState(() {

// });
// }

  @override
  // void initState() {
  //   ontheload();
  //   startTimer();
  //   super.initState();
  // }

  // Stream? foodStream;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(top: 10.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Material(
                  elevation: 2.0,
                  child: Container(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Center(
                          child: Text(
                        "Food Cart",
                        style: AppWidget.headLineTextFieldStyle(),
                      )))),
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 40,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text("2"),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.asset(
                                "images/salad2.png",
                                height: 90,
                                width: 90,
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                "Salad",
                                style: AppWidget.semiBoldtTextFieldStyle(),
                              ),
                              Text(
                                "\$40",
                                style: AppWidget.semiBoldtTextFieldStyle(),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
              Spacer(),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Price",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    Text(
                      "\$40.0",
                      style: AppWidget.semiBoldtTextFieldStyle(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  margin:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                  child: const Center(
                      child: Text(
                    "CheckOut",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ])));
  }
}
