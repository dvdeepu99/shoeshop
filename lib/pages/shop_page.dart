import 'package:flutter/material.dart';
import 'package:shoe_shopping/components/shoe_tile.dart';
import 'package:shoe_shopping/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey[700]),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[700],
              )
            ],
          ),
        ),
        //message

        //hot picks

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                  description: 'Shoe #1',
                  imagePath: 'lib/images/Air Jordan.webp',
                  name: 'Air Jordan',
                  price: '200');
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: Divider(
            color: Colors.grey[400],
          ),
        )
      ],
    );
  }
}
