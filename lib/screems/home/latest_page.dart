import 'package:flutter/material.dart';
import 'package:lessondaryo/models/news.dart';

class LatestPage extends StatelessWidget {
  const LatestPage({super.key});

  static List<News> news = [
    News(
        category: "Maslahatlar",
        title: "Qoqon shaxrida tarixiy binolar rekantruksiya qilindi",
        content: "content",
        watchCount: "300",
        time: "17:20",
        date: "28.July.2024",
        imgUrl:
        "https://th.bing.com/th/id/OIP.6-h_DOxs1XHSzP8TnlhzEgHaEK?w=1024&h=576&rs=1&pid=ImgDetMain"),
    News(
        category: "Sport",
        title: "Qoqon shaxrida tarixiy Qoqon-1912 jamosi ligaga qaytdi",
        content: "content",
        watchCount: "300",
        time: "17:20",
        date: "28.July.2024",
        imgUrl:
        "https://i.ytimg.com/vi/v9L5EBjrCZk/hqdefault.jpg"),
    News(
        category: "Dunyo",
        title: "Britaniya harbiy samolyotlari Qora dengiz bo‘ylab Rossiya hududiga uchirildi",
        content: "content",
        watchCount: "300",
        time: "17:20",
        date: "28.July.2024",
        imgUrl:
        "https://daryo.uz/static/2024/07/27/fighter-fyTMjrcC.jpg"),
    News(
        category: "Dunyo",
        title: "Rossiyaning Kiolim qishlog‘ida suv to‘g‘oni buzilishi oqibatida 170 ga yaqin kishi evakuatsiya qilindi",
        content: "content",
        watchCount: "300",
        time: "17:20",
        date: "28.July.2024",
        imgUrl:
        "https://daryo.uz/static/2024/07/27/suv-xQzZlBTh.jpg"),
    News(
        category: "Maslahatlar",
        title: "Qoqon shaxrida tarixiy binolar rekantruksiya qilindi",
        content: "content",
        watchCount: "300",
        time: "17:20",
        date: "28.July.2024",
        imgUrl:
        "https://th.bing.com/th/id/OIP.6-h_DOxs1XHSzP8TnlhzEgHaEK?w=1024&h=576&rs=1&pid=ImgDetMain"),
    News(
        category: "Maslahatlar",
        title: "Qoqon shaxrida tarixiy binolar rekantruksiya qilindi",
        content: "content",
        watchCount: "300",
        time: "17:20",
        date: "28.July.2024",
        imgUrl:
        "https://th.bing.com/th/id/OIP.6-h_DOxs1XHSzP8TnlhzEgHaEK?w=1024&h=576&rs=1&pid=ImgDetMain"),
    News(
        category: "Maslahatlar",
        title: "Qoqon shaxrida tarixiy binolar rekantruksiya qilindi",
        content: "content",
        watchCount: "300",
        time: "17:20",
        date: "28.July.2024",
        imgUrl:
        "https://th.bing.com/th/id/OIP.6-h_DOxs1XHSzP8TnlhzEgHaEK?w=1024&h=576&rs=1&pid=ImgDetMain"),
    News(
        category: "Maslahatlar",
        title: "Qoqon shaxrida tarixiy binolar rekantruksiya qilindi",
        content: "content",
        watchCount: "300",
        time: "17:20",
        date: "28.July.2024",
        imgUrl:
        "https://th.bing.com/th/id/OIP.6-h_DOxs1XHSzP8TnlhzEgHaEK?w=1024&h=576&rs=1&pid=ImgDetMain"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: news.length,
          itemBuilder: (BuildContext context, int index) {
            return newsItem(news[index]);
          }),
    );
  }

  Widget newsItem(News news) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${news.category}',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "${news.time}  |  ${news.date} | ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.visibility_outlined,
                    color: Colors.blue[300],
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '${news.watchCount}',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                '${news.imgUrl}',
                width: 140,
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                  child: Text(
                '${news.title}',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              )),
            ],
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
