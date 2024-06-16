// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_2/model/food_model.dart';
import 'package:flutter_application_2/page/food_detail.dart';
import 'package:flutter_application_2/widgets/custeom_iconButton.dart';

class FoodCard extends StatelessWidget {
  final FoodModel food;
  const FoodCard({ Key? key,required this.food,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FoodDetail(food: food)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        margin: EdgeInsets.only(right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildFoodImage(),
            SizedBox(
              height: 8,
            ),
            buildFoodInfo()
          ],
        ),
      ),
    );
  }

  Widget buildFoodImage() {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          food.images,
          height: 150,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: CustomIconButton(
          margin: EdgeInsets.only(left: 0.1),
          onPressed: (){},
          radius: 32,
          icon: Icon(Icons.favorite,color: Colors.red,),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(4)
        ),
        padding: EdgeInsets.all(4),
        margin: EdgeInsets.all(4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          Icon(Icons.star,color: Colors.yellow,size: 12,),
          SizedBox(
            width: 2,
          ),
          Text("${food.rating}",style: TextStyle(color: Colors.white,fontSize: 12)),
          Text("(1K+)",style: TextStyle(color: Colors.white70,fontSize: 12))
        ]),
      )
    ],
  );
}

Widget buildFoodInfo(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(food.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
      SizedBox(height: 8,),
      Text("\$${food.price}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    ],
  );
}
}
