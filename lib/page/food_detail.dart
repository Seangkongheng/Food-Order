// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_2/model/food_model.dart';
import 'package:flutter_application_2/widgets/custeom_iconButton.dart';

class FoodDetail extends StatefulWidget {
  final FoodModel food;
  const FoodDetail({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  FoodModel get food =>widget.food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildImage(),
          builFoodInfo(),
          builAppBar(),
          buildOrderButton()
        ],
      ) ,
    );
  }

  Widget buildImage(){
    return Container(
      height: MediaQuery.of(context).size.height/2,
      child: Image.asset(food.images)
      );
  }

  Widget builAppBar(){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(icon: Icon(Icons.arrow_back), onPressed: ()=>Navigator.of(context).pop(), margin: EdgeInsets.all(0.1)),
            CustomIconButton(icon: Icon(Icons.favorite,color: Colors.red,) ,onPressed: (){}, margin: EdgeInsets.all(0.1)),
          ],
        ),
      ),
    );
  }

Widget buildOrderButton() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Material(
      elevation: 3,
      color: Colors.white,
      child: Row(
        children: [
          CustomIconButton(
            icon: Icon(Icons.add_shopping_cart,color: Colors.green,),
            onPressed: () {},
            margin: EdgeInsets.all(0.1),
          ),
          SizedBox(
            width: 16,
          ),
          SizedBox(width: 8), // Add some spacing between the buttons
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Place Order'),
            ),
          ),
        ],
      ),
    ),
  );
}

  Widget builFoodInfo(){
    return SingleChildScrollView(padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height / 2-16),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24))
      ),
      padding: EdgeInsets.symmetric(vertical: 24 ,horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(food.name,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Text("\$${food.price}",style: TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold)),
              
            ],
          ),
          SizedBox(height: 16,),
          Text("coca"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...List.generate(5, (index) => Icon(Icons.star,color: Colors.yellow,)),
              Text("${food.rating}"),
              Text("(1k+)"),
              Spacer(),
              CustomIconButton(icon: Icon(Icons.remove,size: 8,),onPressed: (){},backgroundColor:Colors.black.withOpacity(0.1), margin: EdgeInsets.all(0.1),),
              Text('1',style: TextStyle(fontSize: 18),),
              CustomIconButton(icon: Icon(Icons.add,size: 8,),onPressed: (){},backgroundColor:Colors.black.withOpacity(0.1),margin: EdgeInsets.all(0.1),)
          ],),
          buildFoodDescription() ,
          buildIngredient()
        ],
      ),
    ),
    );
  }

  Widget buildFoodDescription(){
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text(food.description),
        ],
      ),
    );
  }

  Widget buildIngredient(){
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ingradient',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:List.generate(10, (index) => Container(
                child: Card(
                  child: Image.asset(food.images)
                ),
                 width:100,
                
              ))
            ),
          )
        ],
      ),
    );
  }
}