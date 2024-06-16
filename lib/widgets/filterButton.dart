import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final bool isSelected;

  const FilterButton({Key? key, required this.title, required this.isSelected}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: ElevatedButton(
        onPressed: () {}, 
        
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: isSelected ? const Color.fromARGB(255, 0, 0, 0) : Colors.green),
          backgroundColor: isSelected ? Colors.green : Colors.white,
        ),
        child: Text('Popular'),
      ),
    );
  }
}
