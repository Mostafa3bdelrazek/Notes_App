import 'package:flutter/material.dart';
import 'package:notes/widgets/color_Item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffA4243B),
    Color(0xff084C61),
    Color(0xffE3B505),
    Color(0xff4F6D7A),
    Color(0xff56a3a6),
    Colors.black,
    Colors.white,
    Colors.blue,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
