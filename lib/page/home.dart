import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/model/categories_model.dart';
import 'package:flutter_application_2/model/food_model.dart';
import 'package:flutter_application_2/widgets/custeom_iconButton.dart';
import 'package:flutter_application_2/widgets/filterButton.dart';
import 'package:flutter_application_2/widgets/food_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          children: [
            buildHeader(),
            SizedBox(
              height: 20,
            ),
            buildSearch(),
            buildFilter(),
            buildFoodList(),
            buildSessionTitle(),
            buildCategory()
          ],
        ),
      ),
    );
  }

  // header function
  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Hello Seang kong heng",
          style: TextStyle(
              fontSize: 16, color: const Color.fromARGB(255, 255, 59, 59)),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          "Text delivery",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  // search function
  Widget buildSearch() {
    return Row(
      children: [
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              hintText: "Search food",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              contentPadding: EdgeInsets.all(8),
              suffixIcon: Icon(Icons.search)),
        )),
        CustomIconButton(
          margin: EdgeInsets.only(left: 8),
          icon: Icon(Icons.filter_list),
          onPressed: () {},
          backgroundColor: Colors.green,
        )
      ],
    );
  }

  Widget buildFilter() {
    return Container(
      height: 32,
      margin: EdgeInsets.only(top: 16),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FilterButton(
            title: 'Popular',
            isSelected: true,
          ),
          FilterButton(
            title: 'New Items',
            isSelected: false,
          ),
          FilterButton(
            title: 'Hot Deal',
            isSelected: false,
          ),
          FilterButton(
            title: 'Combo pack',
            isSelected: false,
          ),
          FilterButton(
            title: 'Best Products',
            isSelected: false,
          ),
        ],
      ),
    );
  }

  Widget buildFoodList() {
    return Container(
      height: 250,
      margin: EdgeInsets.only(top: 24),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          FoodModel food = foodList[index];
          return FoodCard(food: food);
        },
      ),
    );
  }

  Widget buildSessionTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Explore  Categories'),
        IconButton(onPressed: () {}, icon: Icon(Icons.view_agenda))
      ],
    );
  }

  Widget buildCategory() {
    return GridView.builder(
      itemCount: categoryList.length,
      shrinkWrap: true,
      primary: false,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        final CategoryModal categoryModal = categoryList[index];
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                categoryModal.images,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(categoryModal.name),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
