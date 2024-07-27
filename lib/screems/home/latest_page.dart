import 'package:flutter/material.dart';
import 'package:lessondaryo/models/news.dart';


class LatestPage extends StatelessWidget {
  const LatestPage({super.key});

  static List<News> news = [
    News(category: "Maslahatlar", title: "nimadur title", content: "content",watchCount: "300",time: "17:20",date: "28.July.2024",imgUrl: "https://th.bing.com/th/id/OIP.6-h_DOxs1XHSzP8TnlhzEgHaEK?w=1024&h=576&rs=1&pid=ImgDetMain")
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
        return  newsItem(news[index]);
      }),
    );
  }
}

Widget newsItem(News news){
  return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const  Text('${news.category}', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
        Row(
          children: [
           const Text("17:30 | 28 July 2024 | ",style: TextStyle(color: Colors.grey),),
            Icon(Icons.visibility_outlined, color: Colors.blue[300],),
          const  SizedBox(width: 4,),
          const  Text("300",style: TextStyle(color: Colors.blue),)
          ],
        )
          ],
        ),
       const  SizedBox(height: 8,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network("https://th.bing.com/th/id/OIP.6-h_DOxs1XHSzP8TnlhzEgHaEK?w=1024&h=576&rs=1&pid=ImgDetMain",width:140,),
            SizedBox(width: 12,),
           const Expanded(child:  Text("Qoqon shaxrida Tarixiy obidalar rekantruksiya qilinyapti.",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)),
          ],
        ),
        Divider(thickness: 1,)
      ],
            
          ),
        );
}
