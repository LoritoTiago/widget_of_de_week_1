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
        subtitle:
            "Nike, Inc. is an American footwear, apparel, and accessories company founded in 1972 by Bill Bowerman and Phillip Knight. Its headquarters are in Beaverton, Oregon, United States."
                .substring(0, 150),
        title: "Nike",
        cor: Colors.red,
        preco: "\$300.00"),
    ItemModel(
        brand: "a.png",
        img: "ad.png",
        subtitle:
            "Adidas is a company founded in Germany. The company is named after its founder, Adolf Dassler, also known by the nickname Adi, who started producing sneakers in the 1920s, together with his brother Rudolf Dassler, in Herzogenaurach, near Nuremberg."
                .substring(0, 150),
        title: "Addidas",
        cor: Colors.green,
        preco: "\$400.00"),
    ItemModel(
      brand: "r.png",
      img: "rb.png",
      subtitle:
          "Reebok is an American, originally English, sports equipment company. It was acquired in 2005 by Adidas for \$3.8 billion, but its brand and technology continued to be developed without change."
              .substring(0, 150),
      title: "Reebok",
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
