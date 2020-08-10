import 'package:flutter/material.dart';
import 'package:shop/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem({this.id, this.title, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              ProductDetailScreen.routeName,
              arguments: id,
            );
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(
            padding: EdgeInsets.only(right: 12),
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {},
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13.5),
          ),
          trailing: IconButton(
            padding: EdgeInsets.only(left: 12),
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.black87,
        ),
      ),
    );
  }
}
