import 'package:flutter/material.dart';

class ItemModel {
  final String title, subtitle, img, brand, preco;
  final Color cor;
  ItemModel({
    required this.brand,
    required this.img,
    required this.subtitle,
    required this.title,
    required this.cor,
    required this.preco,
  });
}
