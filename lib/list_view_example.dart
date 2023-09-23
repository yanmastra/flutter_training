import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.separated(
        // mainAxisAlignment: MainAxisAlignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.vertical,
        itemCount: 200,
        separatorBuilder: (context, index) => const SizedBox(
          height: 8,
        ),
        itemBuilder: (context, index) => Container(
          height: 100,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: (index % 2) == 1 ? Colors.blue : Colors.green,
          ),
          child: Text(
            "Index :$index",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
}
