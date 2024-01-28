import 'package:flutter/material.dart';
import 'package:project_tas/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios_new_outlined, color:Colors.black),           
            ),
            Image.asset(
              "images/salad2.png", 
              width: MediaQuery.of(context).size.width/3,
              height: MediaQuery.of(context).size.height/3, 
              fit: BoxFit.fill,
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mediteranean", style: AppWidget.boldTextFieldStyle()),
                    Text("Chickpea salad", style: AppWidget.semiBoldtTextFieldStyle()),   
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a>1) {
                      --a;
                    }                  
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.remove, color: Colors.white,),
                  ),
                ),
                SizedBox(width: 10,),

                Text(a.toString(), style: AppWidget.semiBoldtTextFieldStyle(),),

                SizedBox(width: 10,),

                GestureDetector(
                  onTap: (){
                    ++a;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.add, color: Colors.white,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tincidunt, enim id ultricies rutrum, nisi nisl pellentesque nisl, venenatis dictum tortor erat in felis. Integer tincidunt cursus turpis, sed accumsan nibh aliquam sed. Donec turpis ex, luctus at cursus bibendum, rhoncus in diam. Aliquam pellentesque sapien luctus gravida pulvinar. Vestibulum diam urna, luctus vel pellentesque et, semper non tortor. Aliquam eleifen",maxLines: 3,
              style: AppWidget.lightTextFieldStyle(),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                          style: AppWidget.semiBoldtTextFieldStyle(),
                      ),
                      Text(
                        "\$28",
                          style: AppWidget.headLineTextFieldStyle(),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/3.4,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      const Text(
                        "Add to cart",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 30.0,),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.grey,borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                      )
                    ]),
                  )
                ],
              ),
              )

        ],
        ),
      ),
    );
  }
}