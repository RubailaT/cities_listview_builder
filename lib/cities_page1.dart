  import 'package:cities_listview_builder/model_cities.dart';
import 'package:flutter/material.dart';

class CitiesList extends StatelessWidget {
   const CitiesList({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {

   List Cities=[

    ModelCity(
        img:"images/redfort.png",
        ttl:"Delhi",
        subtl: "India",
        endtxt: "Population : 19 Million"
    ),

     ModelCity(
         img:"images/download.jpeg",
         ttl:"London",
         subtl: "Britain",
         endtxt: "Population : 8 Million"
     ),

     ModelCity(
         img:"images/swiss.jpg",
         ttl:"Switzerland",
         subtl: "Bern",
         endtxt: "Population : 8.7 Million"
     ),

     ModelCity(
         img:"images/newyork.jpg",
         ttl:"NewYork",
         subtl: "USA",
         endtxt: "Population : 8.1  Million"
     ),

     ModelCity(
         img:"images/Vancouver.png",
         ttl:"Vancouver",
         subtl: "Canada",
         endtxt: "Population : 2.4  Million"
     ),


   ];
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Color(0xcffDA9B09),
         title: Text("Cities around world",style:
         TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
       ),

       body:
         ListView.builder(
           itemCount: Cities.length,
             itemBuilder: (context,index){
             return Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(3),

               ),

               child: Row(
                 children: [
                   SizedBox(width: 20,),
                   Container(
                     width:130,
                     height:130,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage(Cities[index].img),
                         fit: BoxFit.cover,
                       ),
                     ),
                     ),
                   SizedBox(width: 30,),
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,


                       children: [
                  Text( Cities[index].ttl,
               style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),

                         Text(Cities[index].subtl),


                    Text(Cities[index].endtxt),


                       ],
                     ),
                   )
                 ],
               ),



               //
               //
               //     subtitle:Text(),
               //   ),
               // ),



             );
             }
         ),


     );
   }
 }

