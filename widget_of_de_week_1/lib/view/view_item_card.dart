import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:widget_of_de_week_1/model/item.dart';
import 'package:widget_of_de_week_1/view/widget/btn_container.dart';
import 'package:widget_of_de_week_1/view/widget/button.dart';

class ViewItemCard extends StatefulWidget {
  final ItemModel data;
  const ViewItemCard({Key? key, required this.data}) : super(key: key);

  @override
  _ViewItemCardState createState() => _ViewItemCardState();
}

class _ViewItemCardState extends State<ViewItemCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.data.cor.withOpacity(.6),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              color: widget.data.cor.withOpacity(.6),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(100),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInDown(
                    duration: const Duration(milliseconds: 600),
                    child: Image.asset(
                      "assets/img/${widget.data.brand}",
                      height: 30,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Hero(
                    tag: widget.data.img,
                    child: Image.asset(
                      "assets/img/${widget.data.img}",
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          column(),
        ],
      ),
    );
  }

  column() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.data.title,
            style: const TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(height: 3, width: 50, color: Colors.black),
          const SizedBox(height: 20),
          Text(
            widget.data.subtitle,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              BtnContainer(
                icon: const Icon(Icons.star_border_outlined),
                onTap: () {},
              ),
              const SizedBox(width: 10),
              BtnContainer(
                icon: const Icon(Icons.shopping_bag_outlined),
                onTap: () {},
              ),
              const Spacer(),
              SlideInRight(
                duration: const Duration(milliseconds: 800),
                child: Text(
                  widget.data.preco,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Button(onTap: () {}, text: "Add to cart")
        ],
      ),
    );
  }
}
