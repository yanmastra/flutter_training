import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SizedBox(
        height: 720,
        child: ListView.separated(
          // mainAxisAlignment: MainAxisAlignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.vertical,
          itemCount: 3,
          separatorBuilder: (context, index) => const SizedBox(
            height: 8,
            // width: 8,
          ),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              print("clicked $index");
            },
            child: Container(
              // width: 200,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 2, spreadRadius: -2)],
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: Image.asset('assets/destination.png'),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Kampus",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "Jl. Nasional, No. 12B, Pontianak, Kalimantan Barat",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
