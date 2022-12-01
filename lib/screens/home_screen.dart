

import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/header_curvo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
         
        const Positioned(child: HeaderCurvo()),

           Positioned(top: 80,child: Container(margin: const EdgeInsets.only(left: 85),child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Senati_Per%C3%BA_logo.svg/800px-Senati_Per%C3%BA_logo.svg.png',color: Colors.white,)),height: 100,),
          const Positioned(left: 20,top: 20,child: Icon(Icons.menu,size: 70,color: Colors.white,)),
       SingleChildScrollView(
        
         child: Column(
          children: const [
            SizedBox(height: 300,),
          
             Content(),
             SizedBox(height: 50,)
          ],
         ),
       )
          
        ],
        
      ) ,
      floatingActionButton: FloatingActionButton(
        
        elevation: 0,
        onPressed: (){},child: const Icon(Icons.call,size: 50,),), 

    );
  }

}

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Table(children: const [
         TableRow(
        
           children: [
             Cards(
               color: Colors.pink,
               icon: Icons.car_rental_sharp,
               text: 'Cars',
             ),
             Cards(
               color: Colors.green,
               icon: Icons.accessibility_new,
               text: 'Grass',
             )
               
           ]
            
         ),
            TableRow(
        
           children: [
             Cards(
               color: Colors.redAccent,
               icon: Icons.ad_units_rounded,
               text: 'Cellphone',
             ),
             Cards(
               color: Color.fromARGB(255, 235, 255, 82),
               icon: Icons.add_a_photo_outlined,
               text: 'Cellphone',
             )
               
           ]
            
         ),
            TableRow(
        
           children: [
             Cards(
               color: Color.fromARGB(255, 102, 255, 82),
               icon: Icons.ad_units_rounded,
               text: 'Naget',
             ),
             Cards(
               color: Color.fromARGB(255, 255, 82, 255),
               icon: Icons. account_circle,
               text: 'People',
             )
               
           ]
            
         ),
           TableRow(
        
           children: [
             Cards(
               color: Color.fromARGB(255, 102, 255, 82),
               icon: Icons.ad_units_rounded,
               text: 'Naget',
             ),
             Cards(
               color: Color.fromARGB(255, 255, 82, 255),
               icon: Icons. account_circle,
               text: 'People',
             )
               
           ]
            
         )
      
       ],)
     ],
    );
  }
}

class Cards extends StatelessWidget {
  final Color color;
  final String text;
  final IconData  icon;
  const Cards({
    Key? key, required this.color, required this.text, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      height: 200,
      decoration: BoxDecoration(
      color: Color.fromARGB(53, 68, 27, 134),
      borderRadius: BorderRadius.circular(30)
      

      ),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Icon(icon,size: 100,color: color,),
          Text(text,style: TextStyle(fontSize: 23),)
        ],
      ),
      
    );
  }
} 