import 'package:flutter/material.dart';
import 'package:dans_milk/widget/page_view_indicator.dart';

class MilkPager extends StatefulWidget {
  MilkPager({Key key}) : super(key: key);

  @override
  _MilkPagerState createState() => _MilkPagerState();
}

class _MilkPagerState extends State<MilkPager> {
  List<String> pages = ['images/satu.jpg', 'images/dua.jpg', 'images/tiga.png'];

  int currentPage = 0;
  PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              controller: controller,
              onPageChanged: (int page){
                setState(() {
                  currentPage = page;
                });
              },
              children: List.generate(pages.length, (index){
                String currentAsset = pages[index];

                return Container(
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(0.0, 5.0)
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage(currentAsset),
                      fit: BoxFit.cover
                    )
                  ),
                );
              }),
            ),
          ),
          PageViewIndicator(
            controller: controller,
            numberOfPages: pages.length,
            currentPage: currentPage,
          )

        ],
      ),
    );
  }
}
