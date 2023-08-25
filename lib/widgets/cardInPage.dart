import 'package:banking_app/utilities/themeStyles.dart';
import 'package:flutter/material.dart';

class CardInPage extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;
  const CardInPage({super.key, 
    required this.color,
    required this.letter,
    required this.price,
    required this.subTitle,
    required this.title,
  });
  @override
  _CardInPageState createState() => _CardInPageState();
}

class _CardInPageState extends State<CardInPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: SizedBox(
        height: 57.0,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44.0,
                      width: 44.0,
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Center(
                        child: Text(
                          widget.letter,
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.title,
                            style: ThemeStyles.otherDetailsPrimary),
                        Text(widget.subTitle,
                            style: ThemeStyles.otherDetailsSecondary),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(widget.price, style: const TextStyle(color: Colors.red)),
                    const SizedBox(width: 4.0),
                    const Icon(Icons.keyboard_arrow_right),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}