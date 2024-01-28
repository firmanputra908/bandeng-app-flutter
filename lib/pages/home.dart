import 'package:flutter/material.dart';
import 'package:project_tas/pages/details.dart';
import 'package:project_tas/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza=false, salad=false, burger=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only( top: 10.0, left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello FIRMANSYAH,",
                  style: AppWidget.boldTextFieldStyle()   
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.shopping_cart_outlined, color: Colors.white ,),
                ),
              ],
            ),
            const SizedBox(height: 5.0,),
            Text(
              "Delicious Food",
              style: AppWidget.headLineTextFieldStyle()   
            ),
            Text(
              "Discover and Get Great Food",
              style: AppWidget.lightTextFieldStyle()   
            ),
            const SizedBox(height: 10),

            Container(
              margin: const EdgeInsets.only(right: 20),
              child: showItem()
            ),

            const SizedBox(height: 10),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => Details() 
                          )
                        );
                    } ,
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/salad2.png", 
                                height: 150, 
                                width: 150, 
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Weggie taco hash", 
                                style: AppWidget.semiBoldtTextFieldStyle() 
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                "Fresh and Healthy", 
                                style: AppWidget.lightTextFieldStyle() 
                              ),
                              const SizedBox(height: 5,),                     
                              Text(
                                "\$25", 
                                style: AppWidget.semiBoldtTextFieldStyle()
                              ),
                            ],
                          ),
                        ),                     
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => Details() 
                          )
                        );
                    } ,
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/salad3.png", 
                                height: 150, 
                                width: 150, 
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Mix Veg Salad", 
                                style: AppWidget.semiBoldtTextFieldStyle() 
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                "Spicy with Onion", 
                                style: AppWidget.lightTextFieldStyle() 
                              ),
                              const SizedBox(height: 5,),                     
                              Text(
                                "\$28", 
                                style: AppWidget.semiBoldtTextFieldStyle()
                              ),
                            ],
                          ),
                        ),                     
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 15),

                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => Details() 
                          )
                        );
                    } ,
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/salad4.png", 
                                height: 150, 
                                width: 150, 
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Salad khas Mars", 
                                style: AppWidget.semiBoldtTextFieldStyle() 
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                "Fresh and Healthy", 
                                style: AppWidget.lightTextFieldStyle() 
                              ),
                              const SizedBox(height: 5,),                     
                              Text(
                                "\$25", 
                                style: AppWidget.semiBoldtTextFieldStyle()
                              ),
                            ],
                          ),
                        ),                     
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => Details() 
                          )
                        );
                    } ,
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "images/salad2.png", 
                                height: 150, 
                                width: 150, 
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Salad Bumbu Kuning", 
                                style: AppWidget.semiBoldtTextFieldStyle() 
                              ),
                              const SizedBox(height: 5,),
                              Text(
                                "Authentic taste", 
                                style: AppWidget.lightTextFieldStyle() 
                              ),
                              const SizedBox(height: 5,),                     
                              Text(
                                "\$22", 
                                style: AppWidget.semiBoldtTextFieldStyle()
                              ),
                            ],
                          ),
                        ),                     
                      ),
                    ),
                  ),

                  
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(right: 10, left: 10),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/salad2.png", 
                        height: 120, 
                        width: 120, 
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 20.0),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Text(
                              "mediteranian chcipea salad",
                              style: AppWidget.semiBoldtTextFieldStyle(),
                              ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Text(
                              "Honey goot cheese",
                              style: AppWidget.lightTextFieldStyle (),
                              ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Text(
                              "\$28",
                              style: AppWidget.semiBoldtTextFieldStyle (),
                              ),
                          )
                        ],
                      )
                    ],),
                ),
              ),

            )
          ],
        ), 
      ),
    );
  }

  Widget showItem(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            icecream = true;
            pizza = false;
            salad = false;
            burger = false;
            setState(() {
              
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: icecream?Colors.black : Colors.white, borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset("images/ice-cream.png", height: 40,width: 40, fit: BoxFit.cover, color: icecream? Colors.white : Colors.black,),
              ),
            ),
        ),
        GestureDetector(
          onTap: (){
            icecream = false;
            pizza = true;
            salad = false;
            burger = false;
            setState(() {
              
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: pizza?Colors.black : Colors.white, borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset("images/pizza.png", height: 40,width: 40, fit: BoxFit.cover, color: pizza? Colors.white : Colors.black,),
              ),
            ),
        ),
        GestureDetector(
          onTap: (){
            icecream = false;
            pizza = false;
            salad = true;
            burger = false;
            setState(() {
              
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: salad?Colors.black : Colors.white, borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset("images/salad.png", height: 40,width: 40, fit: BoxFit.cover, color: salad? Colors.white : Colors.black,),
              ),
            ),
        ),
        GestureDetector(
          onTap: (){
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            setState(() {
              
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: burger?Colors.black : Colors.white, borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.all(8),
              child: Image.asset("images/burger.png", height: 40,width: 40, fit: BoxFit.cover, color: burger? Colors.white : Colors.black,),
              ),
            ),
        ),
      ],
    );
  }
}