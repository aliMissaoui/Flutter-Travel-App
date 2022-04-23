import 'package:flutter/material.dart';
import 'package:trip/data/content.dart';
import 'package:trip/style/colors.dart';
import 'package:trip/style/style.dart';
import 'package:trip/style/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          right: 30.0,
          left: 30.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 18.0,
                  color: txtColor,
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: userImg,
                )
              ],
            ),
            const SizedBox(
              height: 60.0,
            ),
            Text(
              homeTitle,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: greyishColor,
                borderRadius: BorderRadius.circular(80),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: search,
                      border: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    recommended,
                    style: categoriesStyle,
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: txtColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: rec.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildRecommendedCard(rec, index);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30.0,
                bottom: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    trend,
                    style: categoriesStyle,
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: txtColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: trends.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildTrendsCard(trends, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildRecommendedCard(List content, index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        width: 150,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(content[index]['picPath']),
                width: 150,
                height: 200,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 18.0,
                right: 24.0,
                left: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    content[index]['title'],
                    style: recTitlesStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    content[index]['subtitle'],
                    style: recSubtitlesStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTrendsCard(List trends, int index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        width: 160,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: greyishColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  trends[index]['picPath'],
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    trends[index]['title'],
                    style: trendTitleStyle,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    trends[index]['subtitle'],
                    style: trendSubtitleStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
