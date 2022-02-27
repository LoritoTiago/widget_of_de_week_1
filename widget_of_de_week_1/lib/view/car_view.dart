import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_de_week_1/model/item.dart';
import 'package:widget_of_de_week_1/view/view_item_card.dart';
import 'package:widget_of_de_week_1/view/widget/button.dart';
import 'package:widget_of_de_week_1/view/widget/card_item.dart';
import 'package:widget_of_de_week_1/view/widget/line.dart';

class CarView extends StatelessWidget {
  final ItemModel data;
  const CarView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFDF7),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Line(
              img: data.brand,
              txt: data.title,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (ctx) => ViewItemCard(data: data),
                    ),
                  );
                },
                child: column(context),
              ),
            )
          ],
        ),
      ),
    );
  }

  column(context) {
    return CardItem(
        cor: data.cor, img: data.img, onTap: () {}, preco: data.preco);
  }
}
