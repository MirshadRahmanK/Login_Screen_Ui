import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StarRating extends StatefulWidget {
  const StarRating({Key? key}) : super(key: key);

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.star,
        color: Colors.grey,
      )),
      IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.star,
        color: Colors.grey,
      )),
      IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.star,
        color: Colors.grey,
      )),
      IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.star,
        color: Colors.grey,
      )),
      IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.star,
        color: Colors.grey,
      )),
      ],
    );
  }

  
}
