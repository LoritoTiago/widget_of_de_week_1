import 'package:flutter/material.dart';
import 'package:widget_of_de_week_1/view/widget/button.dart';

class CardItem extends StatelessWidget {
  final String preco, img;
  final Function onTap;
  final Color cor;
  const CardItem(
      {Key? key,
      required this.cor,
      required this.img,
      required this.onTap,
      required this.preco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: PhysicalModel(
            elevation: 5,
            color: cor.withOpacity(.5),
            borderRadius: BorderRadius.circular(40),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4.5,
          left: 12,
          right: 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(15 / 360),
                  child: Image.asset(
                    "assets/img/$img",
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                preco,
                style: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Button(onTap: onTap, text: "Add to Cart")
            ],
          ),
        )
      ],
    );
  }
}
