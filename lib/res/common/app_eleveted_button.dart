import 'package:big_cart_app/res/common/media_query.dart';
import 'package:big_cart_app/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;
  final Color? color;
  final Color? colorBlack;
  final SizedBox? sizeBox;
  final String? image;
  const AppElevatedButton({
    super.key,
    this.onPressed,
    this.text,
    this.color,
    this.image,
    this.sizeBox,
    this.colorBlack,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed!,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? AppColors.green,
        fixedSize: Size(width(context), height(context) / 15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width(context) / 40)),
      ),
      child: Row(
        children: [
          sizeBox ?? Image.asset(image!, height: height(context) / 30),
          SizedBox(width: width(context) / 5),
          Text(
            text!,
            style: TextStyle(
                fontSize: height(context) / 40,
                fontWeight: FontWeight.w600,
                color: colorBlack ?? AppColors.white),
          ),
        ],
      ),
    );
  }
}
