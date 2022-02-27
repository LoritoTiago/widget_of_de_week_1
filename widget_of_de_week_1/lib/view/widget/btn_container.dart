import 'package:flutter/material.dart';

class BtnContainer extends StatelessWidget {
  final Icon icon;
  final Function onTap;
  const BtnContainer({Key? key, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        child: icon,
      ),
    );
  }
}
