import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.only(top: 35,right: 20,left: 20),
        child: SingleChildScrollView(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Find Your Table For\nAny Occasion',
          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: color_1),),
         const SizedBox(height: 15),
          Text('Discover and Book the best restaruant',
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: color_1),),
         const SizedBox(height: 15),
          const CupertinoSearchTextField(
            prefixIcon: Icon(Icons.arrow_circle_right_rounded),
            placeholder: 'Select Your Location'),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Categories',
          style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: color_1),),
          Text('See All',
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: color_1),),
          ],),
         const SizedBox(height: 15),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
            padding:const EdgeInsets.all(5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10)
            ),
            child:const Image(image: AssetImage('assets/burger.png')),),
            Container(
            padding:const EdgeInsets.all(5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10)
            ),
            child:const Image(image: AssetImage('assets/pizza.png')),),
            Container(
            padding:const EdgeInsets.all(5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
            ),
            child:const Image(image: AssetImage('assets/cofe.png')),),
            Container(
            padding:const EdgeInsets.all(5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 201, 128, 153),
              borderRadius: BorderRadius.circular(10)
            ),
            child:const Image(image: AssetImage('assets/bread.png')),),


         ],),
         SizedBox(height: 15,),
         Divider(color: Colors.grey,thickness: 1,),
         SizedBox(height: 8,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('Neer You',
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: color_1),),
          Text('See All',
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: color_1),),
          ],),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              children: [
                Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 100,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                        
                        image: AssetImage('assets/resta1.png'),fit: BoxFit.cover)),
                    ),
                    Row(
         
                      
                      children: [
                      Image(image: AssetImage('assets/arrow.png'),width: 20,height: 20,),
                      SizedBox(width: 10,),
                      Text('3399.99 venice'),
                      SizedBox(width: 10,),
                      Icon(Icons.cake),
                      SizedBox(width: 10,),
                      Text('Ialian'),
                    ],)
                  ],
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Container(
                      height: 100,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        
                        image: DecorationImage(
                        image: AssetImage('assets/resta2.png'),fit: BoxFit.cover)),
                    ),
                    Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                      Image(image: AssetImage('assets/arrow.png'),width: 20,height: 20,),
                      SizedBox(width: 10,),
                      Text('3399.99 venice'),
                      SizedBox(width: 10,),
                      Icon(Icons.cake),
                      SizedBox(width: 10,),
                      Text('Ialian'),
                    ],)
                  ],
                ),
              ],),
          )
        ],)),
      ),









      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(label: '',icon: Icon(Icons.home,color: color_1,)),
        BottomNavigationBarItem(label: '',icon: Icon(Icons.search,color: color_1)),
        BottomNavigationBarItem(label: '',icon: Icon(Icons.favorite,color: color_1)),
        BottomNavigationBarItem(label: '', icon: Icon(Icons.account_circle_outlined,color: color_1),),

      ],),
    );
  }
}