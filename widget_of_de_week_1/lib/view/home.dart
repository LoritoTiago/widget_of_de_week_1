import 'package:flutter/material.dart';
import 'package:widget_of_de_week_1/model/item.dart';
import 'package:widget_of_de_week_1/view/car_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [];
  List<ItemModel> data = [
    ItemModel(
        brand: "n.png",
        img: "nk.png",
        subtitle: "Adidas é uma marca super top",
        title: "Nike",
        cor: Colors.red,
        preco: "\$300.00"),
    ItemModel(
        brand: "a.png",
        img: "ad.png",
        subtitle: "Adidas é uma marca super top",
        title: "Addidas",
        cor: Colors.green,
        preco: "\$400.00"),
    ItemModel(
      brand: "r.png",
      img: "rb.png",
      subtitle: "Adidas é uma marca super top",
      title: "Rebock",
      cor: Colors.yellow,
      preco: "\$600.00",
    ),
  ];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < data.length; i++) {
      pages.add(
        CarView(
          data: data[i],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: pages,
      ),
    );
  }
}
