import 'package:flutter/material.dart';
import 'package:restraunt_app_ui/home.dart';
Color color_1 = const Color.fromARGB(255, 45, 70, 90);
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
    ));
  }
}


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(children: [
   Container(
        alignment: Alignment.bottomCenter,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        
        decoration:const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/background.png'),fit: BoxFit.fill),
          
        ),
       
      ),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text('Discover and\nBook The Best\nRestaurant',
                style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),
               const Text('an anrivel selection of resturant\nfor what ever you want',
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding:const EdgeInsets.only(bottom: 25,right: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                   const Text('skip'),
                   const SizedBox(width: 20),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: color_1
                        ),
                        height: 65,
                        width: 65,
                        child:const Icon(Icons.arrow_outward_sharp,color: Colors.white,),),
                    )
                  ],),
                )
            
              ],),
          ),
        ),
      ],)
      
    
    );
  }
}